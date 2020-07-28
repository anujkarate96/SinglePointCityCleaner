package Controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CityDAO;
import DAO.FeedbackDAO;
import VO.CityVO;
import VO.FeedbackVO;
import VO.LoginVO;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FeedbackController() {
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

		if (flag.equals("search")) {

			search(request, response);
		}

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
		}

	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		FeedbackVO feedbackVO = new FeedbackVO();
		FeedbackDAO feedbackDAO = new FeedbackDAO();
		List ls = feedbackDAO.search(feedbackVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);

		response.sendRedirect("Admin/viewFeedback.jsp");
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int userId = (int) request.getSession().getAttribute("userID");

		String s1 = request.getParameter("sub");
		String s2 = request.getParameter("des");

		LoginVO loginVO = new LoginVO();
		loginVO.setLid(userId);
		FeedbackVO feedbackVO = new FeedbackVO();

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd//mm/yyyy");
		java.util.Date d = new java.util.Date();
		String date = dateFormat.format(d);

		SimpleDateFormat dateFormat1 = new SimpleDateFormat("hh:mm:ss");
		String time = dateFormat1.format(d);

		feedbackVO.setSub(s1);
		feedbackVO.setDes(s2);
		feedbackVO.setLoginVO(loginVO);
		feedbackVO.setFeedbackDate(date);
		feedbackVO.setFeedbackTime(time);

		FeedbackDAO feedbackDAO = new FeedbackDAO();
		feedbackDAO.save(feedbackVO);

		response.sendRedirect("User/main.jsp");
	}

}
