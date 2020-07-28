package Controller;

import java.io.IOException;
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
 * Servlet implementation class ForgotController
 */
@WebServlet("/ForgotController")
public class ForgotController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgotController() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	int OTP;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		String flag = request.getParameter("flag");

		if (flag.equals("sendotp")) {
			sendotp(request, response);
		} else if (flag.equals("verify")) {
			verify(request, response);

		} else if (flag.equals("update")) {
			update(request, response);

		}

	}

	private void verify(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		Integer o1 = Integer.parseInt(request.getParameter("otp"));

		if (o1 == OTP) {
			response.sendRedirect("User/updatepassword.jsp");
		}

		else {
			response.sendRedirect("User/verification.jsp");
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {

		HttpSession httpSession = request.getSession();

		String s1 = request.getParameter("np");
		String s2 = request.getParameter("cp");
		String email = (String) httpSession.getAttribute("email");

		
		if (s1.equals(s2)) {

			LoginVO loginVO = new LoginVO();
			loginVO.setPass(s1);
			loginVO.setEmail(email);

			RegDAO dao = new RegDAO();
			dao.updatepassword(loginVO);

		}

		response.sendRedirect("User/login.jsp");
	}

	private void sendotp(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String s = request.getParameter("email");

		HttpSession session = request.getSession();
		session.setAttribute("email", s);

		System.out.println(
				"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< USERNAME >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + s);

		String subject = ("otp");
		String content = ("otp");

		SendEmail sendEmail = new SendEmail();

		sendEmail.sendMail(s, subject, content, "contactusspcc2@gmail.com", "support@avk", generateOTP(5));

		response.sendRedirect("User/passwordVerification.jsp");
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
