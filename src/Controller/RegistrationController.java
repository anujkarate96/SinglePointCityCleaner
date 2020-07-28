package Controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CityDAO;
import DAO.RegDAO;
import DAO.SendEmail;
import VO.CityVO;
import VO.LoginVO;
import VO.RegVO;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationController() {
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
	
		
		 if (flag.equals("profile")) {
			profile(request, response);
		}

		 else if (flag.equals("city")) {
			 city(request, response);
		}
		 
		 
	}

	private void city(HttpServletRequest request, HttpServletResponse response) throws IOException {

		CityDAO cityDAO = new CityDAO();
		CityVO cityVO = new CityVO();
		
		List cityList = cityDAO.search(cityVO);
		
		HttpSession session = request.getSession();
		session.setAttribute("cityList", cityList);
		
		response.sendRedirect("User/Regi.jsp");
		
		
		
	}

	private void profile(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int userId = (int) request.getSession().getAttribute("userID");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);
		
		RegDAO dao = new RegDAO(); 
		List profile = dao.editprofile(loginVO);		
		
		HttpSession session = request.getSession();
		session.setAttribute("profile", profile);
		
		response.sendRedirect("User/editProfile.jsp");
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	int OTP;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String flag = request.getParameter("flag");

		if (flag.equals("verify")) {
			verify(request, response);
		} else if (flag.equals("insertotp")) {
			insertotp(request, response);
		}
		 else if (flag.equals("updateprofile")) {
			 updateprofile(request, response);
			}

	}

	private void updateprofile(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int userId = (int) request.getSession().getAttribute("userID");
		int regId = Integer.parseInt(request.getParameter("regId"));
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String g1 = request.getParameter("g1");
		String email = request.getParameter("email");
		String mn = request.getParameter("mn");
		String usertype = request.getParameter("usertype");
		
		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);
		loginVO.setEmail(email);
		loginVO.setUsertype(usertype);
		
		RegDAO regDAO  =new RegDAO();
		regDAO.updatelogin(loginVO);
		
		RegVO regVO = new RegVO();
		regVO.setRid(regId);
		regVO.setFname(fname);
		regVO.setGender(g1);
		regVO.setLname(lname);
		regVO.setMno(mn);
		regVO.setLoginvo(loginVO);
		
		regDAO.updatereg(regVO);
		
		response.sendRedirect("User/main.jsp");
		
		
	}

	private void insertotp(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("cityId"));
		String d1 = request.getParameter("fn");
		String d2 = request.getParameter("ln");
		String d3 = request.getParameter("mn");
		String d4 = request.getParameter("g1");
		String d6 = request.getParameter("pass");
		String d7 = request.getParameter("usertype");
		String userName = request.getParameter("email");
		
		

		HttpSession s1 = request.getSession();
		s1.setAttribute("ls1", d1);
		s1.setAttribute("ls2", d2);
		s1.setAttribute("ls3", d3);
		s1.setAttribute("ls4", d4);
		s1.setAttribute("ls6", d6);
		s1.setAttribute("ls7", d7);
		s1.setAttribute("ls8", userName);
		s1.setAttribute("ls9", id);
		System.out.println(
				"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< USERNAME >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + userName);

		String subject = ("otp");
		String content = ("otp");

		SendEmail sendEmail = new SendEmail();
		
		sendEmail.sendMail(userName,subject, content, "contactusspcc2@gmail.com", "support@avk", generateOTP(5));
		
		response.sendRedirect("User/verification.jsp");

	}

	private void verify(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		Integer o1 = Integer.parseInt(request.getParameter("otp"));

		if (o1 == OTP) {
			insert(request, response);
			
		}

		else {
			response.sendRedirect("User/verification.jsp");
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {

	
		HttpSession s1 = request.getSession();
		String n1 = (String) s1.getAttribute("ls1");
		String n2 = (String) s1.getAttribute("ls2");
		String n3 = (String) s1.getAttribute("ls3");
		String n4 = (String) s1.getAttribute("ls4");
		String n6 = (String) s1.getAttribute("ls6");
		String n7 = (String) s1.getAttribute("ls7");
		String n8 = (String) s1.getAttribute("ls8");
		int n9 = (Integer) s1.getAttribute("ls9");
		CityVO cityVO=new CityVO();
		cityVO.setCid(n9);
		
		
		RegDAO regdao = new RegDAO();

		LoginVO loginvo = new LoginVO();

		loginvo.setEmail(n8);
		loginvo.setPass(n6);
		loginvo.setUsertype(n7);
		regdao.insert1(loginvo);

		RegVO regvo = new RegVO();
		regvo.setFname(n1);
		regvo.setLname(n2);
		regvo.setGender(n4);
		regvo.setMno(n3);
		regvo.setLoginvo(loginvo);
		regvo.setCityVO(cityVO);
		regdao.insert(regvo);
		
		response.sendRedirect("User/login.jsp");

	}

	
	public Object generateOTP(int limit) {
		// TODO Auto-generated method stub
		int otp = 0;

		if (limit > 5 || limit < 1)
			limit = 3;

		for (int i = 0; i < limit; i++) {

			int x = new Random().nextInt(9);

			if (x == 0 && i == 0)
				i--;
			else
				otp = (otp * 10) + x;
		}
		OTP = otp;
		System.out.println("otp is==" + otp);
		return otp;

	}

}
