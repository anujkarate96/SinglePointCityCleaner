 package filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.AreaDAO;
import DAO.CityDAO;
import DAO.CompanyDAO;
import DAO.ComplaintDAO;
import DAO.RegDAO;
import DAO.RequestGarbageDAO;
import VO.AreaVO;
import VO.CityVO;
import VO.CompanyVO;
import VO.LoginVO;
import VO.RegVO;
import VO.RequestGarbageVO;

/**
 * Servlet Filter implementation class filter
 */
@WebFilter("/*")
public class filter implements Filter {

	/**
	 * Default constructor.
	 */
	public filter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain

		HttpSession session = ((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");

		String uri = ((HttpServletRequest) request).getRequestURI();

		System.out.println("<<<<<Before >>>>>>>" + uri);

		if (uri.contains("/RegistrationController") || uri.contains("/verification.jsp")
				|| uri.contains("/ForgotController") || uri.contains("/Regi.jsp") || uri.contains("/forgotPassword.jsp")
				|| uri.contains("/passwordVerification.jsp") || uri.contains("/updatepassword.jsp")
				|| uri.contains("/css") || uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/img")
				|| uri.contains("/images") || uri.contains("/login.jsp") || uri.contains("/font")
				|| uri.contains("/fonts") || uri.contains("/editProfile.jsp") || uri.contains("/registration.jsp")
				|| uri.contains("/CityController"))

		{
			System.out.println("<<<<<After>>>>>>>" + uri);
			chain.doFilter(request, response);
		} else if (flag != null && flag.equals("logout")) {

			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("/User/login.jsp");
			requestDispatcher.forward(request, response);
		} else if (flag != null && flag.equals("login")) {

			String uname = request.getParameter("email");
			String pass = request.getParameter("pass");

			System.out.println("userID:" + uname + " Password:" + pass);

			session.setAttribute("userID", uname);

			LoginVO loginVO = new LoginVO();
			loginVO.setEmail(uname);
			loginVO.setPass(pass);
			String email = loginVO.getEmail();

			RegDAO registrationDAO = new RegDAO();

			List list = registrationDAO.authentication(loginVO);

			if (list != null && list.size() >= 1) {
				LoginVO user = (LoginVO) list.get(0);

				String type = user.getUsertype();
				int y = user.getLid();

				session.setAttribute("userID", y);
				session.setAttribute("userType", type);

				if (type.equalsIgnoreCase("admin")) {

					
					RegDAO regDAO = new RegDAO();
					List userList = regDAO.name();
					session.setAttribute("userList",userList.size());
					
					ComplaintDAO complaintDAO = new ComplaintDAO();
					List compList = complaintDAO.searchComplaint2();
					session.setAttribute("compList", compList.size());
					
					RequestGarbageDAO requestGarbageDAO = new RequestGarbageDAO();
					RequestGarbageVO requestgarbageVO = new RequestGarbageVO();
					List reqList = requestGarbageDAO.search(requestgarbageVO);
					session.setAttribute("reqList",reqList.size());
					
					List repliedCom = complaintDAO.searchRepliedCom();
					session.setAttribute("repliedCom",repliedCom.size());
					
					
					requestDispatcher = request.getRequestDispatcher("/Admin/index.jsp");
					requestDispatcher.forward(request, response);
				}
				else if (type.equalsIgnoreCase("user")) {

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
					
				} else if (type.equalsIgnoreCase("company")) {
					int userId = (int) session.getAttribute("userID");
					LoginVO vo = new LoginVO();
					vo.setLid(userId);
					CompanyDAO dao1 = new CompanyDAO();
					List<CompanyVO> name1 = dao1.name(vo);

					session.setAttribute("name2", name1.get(0).getCompanyname());

					requestDispatcher = request.getRequestDispatcher("/company/index.jsp");
					requestDispatcher.forward(request, response);
				}

				else {

					requestDispatcher = request.getRequestDispatcher("/User/login.jsp");

					requestDispatcher.forward(request, response);
				}
			} else {
				session.setAttribute("userName", email);
				System.out.println(email);
				requestDispatcher = request.getRequestDispatcher("/User/login.jsp");
				requestDispatcher.forward(request, response);
			}
		} else if (session.getAttribute("userID") != null) {
			String h = (String) session.getAttribute("userType");
			// System.out.println("type = = = " + h);

			if (h != null && h.equals("admin")) {

				// System.out.println("chain");
				chain.doFilter(request, response);
			}

			else if (h != null && h.equals("user")) {
				// System.out.println("chain");
				chain.doFilter(request, response);
			} else if (h != null && h.equals("company")) {
				// System.out.println("chain");
				chain.doFilter(request, response);
			}

			else {
				RequestDispatcher rd = request.getRequestDispatcher("/User/login.jsp");
				rd.forward(request, response);
			}
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/User/login.jsp");
			rd.forward(request, response);

		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
