package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AreaDAO;
import DAO.CatagoryDAO;
import DAO.CityDAO;
import DAO.CompanyDAO;
import DAO.ComplaintDAO;
import DAO.RegDAO;
import DAO.RequestGarbageDAO;
import DAO.SubCatagoryDAO;
import VO.AreaVO;
import VO.CatagoryVO;
import VO.CityVO;
import VO.CompanyVO;
import VO.ComplaintVO;
import VO.LoginVO;
import VO.RegVO;
import VO.RequestGarbageVO;
import VO.SubCatagoryVO;

/**
 * Servlet implementation class RequestGarbageController
 */
@WebServlet("/RequestGarbageController")
public class RequestGarbageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestGarbageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		if(flag.equals("loadcity"))
		{
			loadcity(request,response);
		}
		else if (flag.equals("search"))
		{
			search(request,response);
		}
		else if (flag.equals("replyofrequest"))
		{
			replyofrequest(request,response);
		}
		
		else if (flag.equals("view"))
		{
			view(request,response);
		}
		
		else if (flag.equals("home"))
		{
			home(request,response);
		}
		 
		else if (flag.equals("searchrequest"))
		{
			searchrequest(request,response);
		}
		else if (flag.equals("delete"))
		{
			delete(request,response);
		}
		 
		 
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		String id=request.getParameter("id");
		
		RequestGarbageVO requestgarbageVO=new RequestGarbageVO();
		requestgarbageVO.setRgid(Integer.parseInt(id));
		
		RequestGarbageDAO requestgarbageDAO = new RequestGarbageDAO();
		requestgarbageDAO.delete(requestgarbageVO);
		search(request, response);
	}


	private void searchrequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		RequestGarbageDAO requestgarbageDAO = new RequestGarbageDAO();

		HttpSession session = request.getSession();

		RequestGarbageVO requestgarbageVO = new RequestGarbageVO();

		List complaintList = requestgarbageDAO.searchComplaint2();

		session.setAttribute("complaintList", complaintList);
		System.out.println("----" + complaintList.size());

		response.sendRedirect("Admin/viewRequests.jsp");
	}

	private void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = ((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		int userId = (int) session.getAttribute("userID");
		LoginVO vo = new LoginVO();
		vo.setLid(userId);
		RegDAO dao1 = new RegDAO();

		List<RegVO> name1 = dao1.name(vo);

		session.setAttribute("name1", name1.get(0).getFname());

		AreaDAO areaDAO = new AreaDAO();
		AreaVO areaVO = new AreaVO();
		List areaList = areaDAO.search(areaVO);
		session.setAttribute("areaList", areaList);

		CityDAO cityDAO = new CityDAO();
		CityVO cityVO = new CityVO();
		List cityList = cityDAO.search(cityVO);
		session.setAttribute("cityList", cityList);

		CompanyDAO companyDAO = new CompanyDAO();
		CompanyVO companyVO = new CompanyVO();
		List companyList = companyDAO.search(companyVO);
		session.setAttribute("companyList", companyList);

		ComplaintDAO complaintDAO = new ComplaintDAO();

		List complaintList = complaintDAO.search();
		session.setAttribute("complaintList", complaintList);

		RegDAO dao = new RegDAO();
		List name = dao.name();
		session.setAttribute("name", name);

		List<CityVO> cityList1 = cityDAO.search(cityVO);

		System.out.println("<<<>>>" + cityList1.size());

		List<AreaVO> areaList1 = areaDAO.search(areaVO);

		System.out.println("<<<>>>" + areaList1.size());

		Map<Object, Object> map = new HashMap<Object, Object>();

		for (CityVO cityVO2 : cityList1) {

			List<AreaVO> temp = new ArrayList<AreaVO>();

			for (AreaVO areaVO2 : areaList1)
			{
				System.err.println(cityVO2.getCid()+ " =-=-=== "+ areaVO2.getCityVO().getCid());
				
				if (cityVO2.getCid().equals(areaVO2.getCityVO().getCid()))
				{
					System.err.println("jaay b chhe k nai...");
					temp.add(areaVO2);
				}
			}
			map.put(cityVO2.getCityName(), temp);
		}

		for (Map.Entry<Object, Object> mEntry : map.entrySet()) {
			System.out.println("-------" + mEntry.getKey());
			System.out.println("-------" + mEntry.getValue());
		}
		
		session.setAttribute("map", map);

		requestDispatcher = request.getRequestDispatcher("/User/main.jsp");
		requestDispatcher.forward(request, response);
		
	}

	private void view(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int loginId = (int) request.getSession().getAttribute("userID");
		LoginVO loginVO = new LoginVO();
		loginVO.setLid(loginId);
		
		
		RequestGarbageVO requestgarbageVO = new RequestGarbageVO();
		RequestGarbageDAO requestgarbageDAO = new RequestGarbageDAO();
		List ls=requestgarbageDAO.searchREQUEST(loginVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		response.sendRedirect("User/viewRequests.jsp");
	}

	private void replyofrequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

		
		int requestId = Integer.parseInt(request.getParameter("id"));
		RequestGarbageDAO garbageDAO = new RequestGarbageDAO();
		
		RequestGarbageVO requestGarbageVO = new RequestGarbageVO();
		requestGarbageVO.setRgid(requestId);
		
		/*int compId = garbageDAO.searchCompany(requestGarbageVO);*/ 
		 
		
		List requestList = garbageDAO.replyRequest(requestGarbageVO);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("requestList",requestList);
		
		response.sendRedirect("company/replyRequest.jsp");
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int userId = (int) request.getSession().getAttribute("userID");
		System.out.println("LoginId>>>>>>>>>>" + userId);
		HttpSession session = request.getSession();

		ComplaintDAO complaintDAO = new ComplaintDAO();
		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);

		CompanyVO companyVO = new CompanyVO();

		int companyId = complaintDAO.searchCompany(loginVO);

		System.out.println("----" + companyId);

		companyVO.setId(companyId);
		
		
		RequestGarbageVO requestgarbageVO = new RequestGarbageVO();
		requestgarbageVO.setRequestTo(companyVO);
		RequestGarbageDAO requestgarbageDAO = new RequestGarbageDAO();
		List ls=requestgarbageDAO.search(requestgarbageVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		response.sendRedirect("company/viewRequests.jsp");
		
		
	}
	

	private void loadcity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		CityVO cityVO = new CityVO();
		CityDAO cityDAO = new CityDAO();
		List ls=cityDAO.search(cityVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		
		CatagoryVO catagoryVO=new CatagoryVO();
		CatagoryDAO catagoryDAO=new CatagoryDAO();
		List ls2=catagoryDAO.search(catagoryVO);
		s1.setAttribute("list2",ls2);
		
		response.sendRedirect("User/requestGarbage.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag = request.getParameter("flag");
		if(flag.equals("insert"))
		{
			insert(request,response);
			loadcity(request,response);
		}
		else if(flag.equals("replyFromCompany"))
		{
			replyFromCompany(request,response);
			search(request,response);
		}
	}

	private void replyFromCompany(HttpServletRequest request, HttpServletResponse response) {

		
		int requestId = Integer.parseInt(request.getParameter("id"));
		int requestTo =Integer.parseInt(request.getParameter("requestTo"));
		int requestFrom = Integer.parseInt(request.getParameter("requestFrom"));
		RequestGarbageDAO dao = new RequestGarbageDAO();
		
		CompanyVO companyVO = new CompanyVO();
		companyVO.setId(requestFrom);
		
		
		
		int aid = Integer.parseInt(request.getParameter("k"));
		int cid = Integer.parseInt(request.getParameter("s"));
		int caid = Integer.parseInt(request.getParameter("m"));
		int scaid = Integer.parseInt(request.getParameter("n"));
		
		
		String s1 = request.getParameter("sub");
		String s2  = request.getParameter("des");
		String s3  = request.getParameter("date1");
		String s4  = request.getParameter("date2");
	
		String reqDate = request.getParameter("reqDate");
		String reqTime = request.getParameter("reqTime");
		String requestReply = request.getParameter("requestReply");
		
		
		LoginVO requestto = new LoginVO();
		requestto.setLid(requestTo);
		
		AreaVO areaVO = new AreaVO();
		areaVO.setId(aid);
		
		CityVO cityVO = new CityVO();
		cityVO.setCid(cid);
		
		
		CatagoryVO catagoryVO=new CatagoryVO();
		catagoryVO.setCaid(caid);
		
		SubCatagoryVO subcatagoryVO = new SubCatagoryVO();
		subcatagoryVO.setId(scaid);
		
		RequestGarbageVO requestgarbageVO = new RequestGarbageVO();
		requestgarbageVO.setRgid(requestId);
		requestgarbageVO.setAreaVO(areaVO);
		requestgarbageVO.setCatagoryVO(catagoryVO);
		requestgarbageVO.setCityVO(cityVO);
		requestgarbageVO.setDate1(s3);
		requestgarbageVO.setSubject(s1);
		requestgarbageVO.setRequestFrom(requestto);
		requestgarbageVO.setRequestTo(companyVO);
		requestgarbageVO.setDiscription(s2);
		requestgarbageVO.setSubcatagoryVO(subcatagoryVO);
		requestgarbageVO.setDate2(s4);
		requestgarbageVO.setReqdate(reqDate);
		requestgarbageVO.setReqtime(reqTime);
		requestgarbageVO.setReplyFromCompany(requestReply);
		requestgarbageVO.setRequestStatus("replied");
		
		
		dao.updateRequest(requestgarbageVO);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int aid = Integer.parseInt(request.getParameter("k"));
		int cid = Integer.parseInt(request.getParameter("s"));
		int caid = Integer.parseInt(request.getParameter("m"));
		int scaid = Integer.parseInt(request.getParameter("n"));
		int company = Integer.parseInt(request.getParameter("company"));
		int userId = (int) request.getSession().getAttribute("userID");
		
		String s1 = request.getParameter("sub");
		String s2  = request.getParameter("des");
		String s3  = request.getParameter("date1");
		String s4  = request.getParameter("date2");
	
		RequestGarbageDAO requestgarbageDAO=new RequestGarbageDAO();
		
		CompanyVO companyVO = new CompanyVO();
			companyVO.setId(company);	
		
		AreaVO areaVO = new AreaVO();
		areaVO.setId(aid);
		
		CityVO cityVO = new CityVO();
		cityVO.setCid(cid);
		
		LoginVO loginVO=new LoginVO();
		loginVO.setLid(userId);
		
		CatagoryVO catagoryVO=new CatagoryVO();
		catagoryVO.setCaid(caid);
		
		SubCatagoryVO subcatagoryVO = new SubCatagoryVO();
		subcatagoryVO.setId(scaid);
		
		
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date d = new java.util.Date();
		String da = dateFormat.format(d);

		SimpleDateFormat dateFormat1 = new SimpleDateFormat("hh:mm:ss");
		String t = dateFormat1.format(d);

		RequestGarbageVO requestgarbageVO = new RequestGarbageVO();
		requestgarbageVO.setRequestStatus("pending");
		requestgarbageVO.setAreaVO(areaVO);
		requestgarbageVO.setCatagoryVO(catagoryVO);
		requestgarbageVO.setCityVO(cityVO);
		requestgarbageVO.setDate1(s3);
		requestgarbageVO.setSubject(s1);
		requestgarbageVO.setDiscription(s2);
		requestgarbageVO.setRequestFrom(loginVO);
		requestgarbageVO.setRequestTo(companyVO);
		requestgarbageVO.setSubcatagoryVO(subcatagoryVO);
		requestgarbageVO.setDate2(s4);
		requestgarbageVO.setReqdate(da);
		requestgarbageVO.setReqtime(t);
		requestgarbageVO.setDeletestatus("active");
		
		requestgarbageDAO.insert(requestgarbageVO);
		
		
	}

}
