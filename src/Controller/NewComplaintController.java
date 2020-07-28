package Controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.AreaDAO;
import DAO.CityDAO;
import DAO.ComplaintDAO;
import VO.AreaVO;
import VO.CityVO;
import VO.CompanyVO;
import VO.ComplaintVO;
import VO.LoginVO;

/**
 * Servlet implementation class NewCompliantController
 */
@WebServlet("/NewComplaintController")
@MultipartConfig
public class NewComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewComplaintController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String flag = request.getParameter("flag");
		if (flag.equals("viewComp")) {
			viewComp(request, response);
		}

		else if (flag.equals("searchcomplaint")) {
			searchcomplaint(request, response);
		}
		 if (flag.equals("searchcomplaint2")) {
				searchcomplaint2(request, response);
			}

		else if (flag.equals("reply")) {
			reply(request, response);
			
		} 
		
		else if (flag.equals("viewAdminComplaint")) {
			viewAdminComplaint(request, response);
		}
		 
		else if (flag.equals("delete")) {
			delete(request, response);
		}


	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		
		ComplaintVO complaintVO=new ComplaintVO();
		complaintVO.setComplaintid(Integer.parseInt(id));
		
		ComplaintDAO complaintDAO = new ComplaintDAO();
		complaintDAO.delete(complaintVO);
		searchcomplaint(request, response);
	}

	private void searchcomplaint2(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ComplaintDAO complaintDAO = new ComplaintDAO();

		HttpSession session = request.getSession();

		ComplaintVO complaintVO = new ComplaintVO();

		List complaintList = complaintDAO.searchComplaint2();

		session.setAttribute("complaintList", complaintList);
		System.out.println("----" + complaintList.size());

		response.sendRedirect("Admin/viewComplaint2.jsp");

	}

	private void reply(HttpServletRequest request, HttpServletResponse response) throws IOException {

		HttpSession session = request.getSession();
		int complaintId = Integer.parseInt(request.getParameter("id"));
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setComplaintid(complaintId);
		ComplaintDAO complaintDAO = new ComplaintDAO();

		List replyList = complaintDAO.replyAdmin(complaintVO);
		session.setAttribute("replyList", replyList);

		response.sendRedirect("company/replyComplaint.jsp");

	}

	private void searchcomplaint(HttpServletRequest request, HttpServletResponse response) throws IOException {

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

		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setCompany(companyVO);

		List complaintList = complaintDAO.searchComplaint(complaintVO);

		session.setAttribute("complaintList", complaintList);
		System.out.println("----" + complaintList.size());

		response.sendRedirect("company/viewComplaint.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag.equals("insert")) {
			insert(request, response);
		} else if (flag.equals("replyCompliant")) {
			replyCompliant(request, response);
		}

	}

	private void viewAdminComplaint(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int userId = Integer.parseInt(request.getParameter("id"));

		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);

		ComplaintDAO complaintDAO = new ComplaintDAO();

		List viewList = complaintDAO.viewAdminComplaint(loginVO);

		HttpSession session = request.getSession();
		session.setAttribute("viewList", viewList);

		response.sendRedirect("User/adminComplaint.jsp");

	}

	private void replyCompliant(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int userId = (int) request.getSession().getAttribute("userID");
		int to = Integer.parseInt(request.getParameter("to"));
		String complaintReply = request.getParameter("complaintReply");
		String complaint = request.getParameter("complaint");

		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);

		LoginVO loginVO2 = new LoginVO();
		loginVO2.setLid(to);

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date d = new java.util.Date();
		String date = dateFormat.format(d);

		SimpleDateFormat dateFormat1 = new SimpleDateFormat("hh:mm:ss");
		String time = dateFormat1.format(d);

		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setComplaintStatus("replied");
		complaintVO.setDiscription(complaint);
		complaintVO.setReply(complaintReply);
		complaintVO.setComplaintfrom(loginVO);
		complaintVO.setComplaintTo(loginVO2);
		complaintVO.setDate(date);
		complaintVO.setTime(time);

		ComplaintDAO complaintDAO = new ComplaintDAO();
		complaintDAO.insert(complaintVO);

		searchcomplaint(request, response);

	}

	private void viewComp(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int userId = (int) request.getSession().getAttribute("userID");

		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);
		ComplaintDAO complaintDAO = new ComplaintDAO();
		java.util.List ls = complaintDAO.viewcomplaint(loginVO);

		HttpSession session = request.getSession();

		session.setAttribute("viewComplaintList", ls);

		response.sendRedirect("User/myComplaint.jsp");
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("area"));
		int cid = Integer.parseInt(request.getParameter("city"));
		int userId = (int) request.getSession().getAttribute("userID");
		ComplaintDAO complaintDAO = new ComplaintDAO();

		int company = Integer.parseInt(request.getParameter("company"));
		CompanyVO companyVO = new CompanyVO();
		companyVO.setId(company);

		String s1 = request.getParameter("desc");

		List searchAdmin = complaintDAO.searchAdmin();
System.out.println("List Size for Admin>>>>>>>>>>>>>>"+searchAdmin.size());
		LoginVO complaintTo = (LoginVO) searchAdmin.get(0);

		int lid = complaintTo.getLid();
		System.out.println("lid Admin>>>>>>>>>>>>>>"+lid);
		LoginVO cTo = new LoginVO();
		cTo.setLid(lid);
		
		
		CityVO cityVO = new CityVO();
		cityVO.setCid(cid);
		AreaVO areaVO = new AreaVO();
		areaVO.setId(id);
		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date d = new java.util.Date();
		String date = dateFormat.format(d);

		SimpleDateFormat dateFormat1 = new SimpleDateFormat("hh:mm:ss");
		String time = dateFormat1.format(d);

		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setDiscription(s1);
		complaintVO.setAreaVO(areaVO);
		complaintVO.setCityVO(cityVO);
		complaintVO.setTime(time);
		complaintVO.setDate(date);
		complaintVO.setComplaintfrom(loginVO);
		complaintVO.setComplaintTo(cTo);
		complaintVO.setCompany(companyVO);
		complaintVO.setComplaintStatus("pending");
		complaintVO.setDeletestatus("active");

		try {
			for (Part filePart : request.getParts()) {
				if (filePart.getSubmittedFileName() != null && !filePart.getSubmittedFileName().equals("")) {
					String fileName = filePart.getSubmittedFileName();
					InputStream fileContent = filePart.getInputStream();
					// ... (do your job here)

					byte[] buffer = new byte[fileContent.available()];
					fileContent.read(buffer);

					String filePath = getServletContext().getRealPath(request.getServletPath());

					System.out.println("filepath :: " + filePath);

					int path = filePath.lastIndexOf('\\');
					String path1 = filePath.substring(0, path) + "\\doc\\";
					System.out.println("XC");

					File targetFile = new File(path1 + fileName);
					OutputStream outStream = new FileOutputStream(targetFile);
					outStream.write(buffer);

					// uncoment this if you want to encrypt name of file n
					// coment above 3 line

					System.out.println("File Output Path :: " + path1 + fileName);

					outStream.close();

					complaintVO.setFilename(fileName);
					complaintVO.setFilepath(filePath);

				}
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		complaintDAO.insert(complaintVO);

		compalintTimeline(request, response);

	}

	private void compalintTimeline(HttpServletRequest request, HttpServletResponse response) throws IOException {

		HttpSession session = request.getSession();
		ComplaintDAO complaintDAO = new ComplaintDAO();
		CityDAO cityDAO = new CityDAO();
		CityVO cityVO = new CityVO();
		List cityList = cityDAO.search(cityVO);
		session.setAttribute("cityList", cityList);

		List complaintList = complaintDAO.search();
		session.setAttribute("complaintList", complaintList);

		response.sendRedirect("User/main.jsp");

	}

}
