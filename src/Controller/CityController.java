package Controller;

import java.util.List;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.CityVO;
import VO.RegVO;
import DAO.CityDAO;
import DAO.RegDAO;

@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public CityController() {
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
		} else if (flag.equals("delete")) {
			delete(request, response);
		} else if (flag.equals("edit")) {
			edit(request, response);
		} else if (flag.equals("loadarea")) {
			loadarea(request, response);
		} else if (flag.equals("loadcompany")) {
			loadcompany(request, response);
		}
	}

	private void loadcompany(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int cityId = Integer.parseInt(request.getParameter("cid"));

		CityVO cityVO = new CityVO();
		cityVO.setCid(cityId);
		RegDAO regDAO = new RegDAO();
		List companyList = regDAO.loadCompany(cityVO);

		HttpSession session = request.getSession();

		session.setAttribute("companyList", companyList);
		response.sendRedirect("User/loadcompany.jsp");

	}

	private void loadarea(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int cityId = Integer.parseInt(request.getParameter("cid"));

		CityVO cityVO = new CityVO();
		cityVO.setCid(cityId);

		CityDAO cityDAO = new CityDAO();

		List cityList = cityDAO.loadArea(cityVO);

		HttpSession session = request.getSession();
		session.setAttribute("cityList", cityList);

		response.sendRedirect("User/loadArea.jsp");
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		CityVO cityVO = new CityVO();
		CityDAO cityDAO = new CityDAO();
		List ls = cityDAO.search(cityVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		response.sendRedirect("Admin/viewCity.jsp");

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		String cid = request.getParameter("id");

		CityVO cityVO = new CityVO();
		cityVO.setCid(Integer.parseInt(cid));

		CityDAO cityDAO = new CityDAO();
		cityDAO.delete(cityVO);
		search(request, response);

	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		String cid = request.getParameter("id");

		CityVO cityVO = new CityVO();
		cityVO.setCid(Integer.parseInt(cid));

		CityDAO cityDAO = new CityDAO();
		List ls = cityDAO.editcity(cityVO);

		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		response.sendRedirect("Admin/editCity.jsp");

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
		} else if (flag.equals("update")) {
			update(request, response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String cityname = request.getParameter("cityname");
		String citydiscription = request.getParameter("citydescription");

		CityVO cityVO = new CityVO();
		cityVO.setCityName(cityname);
		cityVO.setCityDisCription(citydiscription);
		cityVO.setDeleteStatus("active");

		CityDAO cityDAO = new CityDAO();
		cityDAO.insert(cityVO);

		response.sendRedirect("Admin/addCity.jsp");
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String cityname = request.getParameter("cityname");
		String citydiscription = request.getParameter("citydescription");

		CityVO cityVO = new CityVO();
		cityVO.setCityName(cityname);
		cityVO.setCid(id);
		cityVO.setCityDisCription(citydiscription);
		cityVO.setDeleteStatus("active");
		CityDAO cityDAO = new CityDAO();
		cityDAO.update(cityVO);

		response.sendRedirect("Admin/addCity.jsp");
	}
}