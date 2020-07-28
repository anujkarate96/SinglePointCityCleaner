package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AreaDAO;
import DAO.CityDAO;
import DAO.CompanyDAO;
import DAO.RegDAO;
import VO.AreaVO;
import VO.CityVO;
import VO.CompanyVO;
import VO.LoginVO;

/**
 * Servlet implementation class CompanyController
 */
@WebServlet("/CompanyController")
public class CompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String flag=request.getParameter("flag");
		if(flag.equals("loadcity"))
		{
			loadcity(request,response);
		}
		else if(flag.equals("search"))
		{
			search(request,response);
		}
		else if(flag.equals("delete"))
		{
			delete(request,response);
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		
		CompanyVO companyVO=new CompanyVO();
		companyVO.setId(Integer.parseInt(id));
		
		CompanyDAO companyDAO = new CompanyDAO();
		companyDAO.delete(companyVO);
		search(request, response);
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		CompanyVO companyVO = new CompanyVO();
		CompanyDAO companyDAO = new CompanyDAO();
		List ls=companyDAO.search(companyVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		response.sendRedirect("Admin/viewCompany.jsp");
	}

	private void loadcity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		CityVO cityVO = new CityVO();
		CityDAO cityDAO = new CityDAO();
		List ls=cityDAO.search(cityVO);
		HttpSession s1 = request.getSession();
		s1.setAttribute("list", ls);
		response.sendRedirect("Admin/addCompany.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String flag = request.getParameter("flag");
		if(flag.equals("insert"))
		{
			insert(request,response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("s"));
		
		CityVO cityVO = new CityVO();
		cityVO.setCid(id);
		
		String companyname = request.getParameter("companyname");
		String companydiscription  = request.getParameter("companydiscription");
		String email = request.getParameter("email");
		String password  = request.getParameter("password");
		
		
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(email);
		loginVO.setPass(password);
		loginVO.setUsertype("company");
		
		RegDAO regDAO = new RegDAO();
		regDAO.insert1(loginVO);
		
		CompanyVO companyVO = new CompanyVO();
		companyVO.setCompanyname(companyname);
		companyVO.setCompanydiscription(companydiscription);
		companyVO.setCityVO(cityVO);
		companyVO.setDeleteStatus("active");
		companyVO.setLoginVO(loginVO);
		
		
		CompanyDAO companyDAO = new CompanyDAO();
		companyDAO.insert(companyVO);
		
		response.sendRedirect("Admin/addCompany.jsp");
	}

}
