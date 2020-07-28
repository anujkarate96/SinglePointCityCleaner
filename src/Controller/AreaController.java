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
import DAO.CatagoryDAO;
import DAO.CityDAO;
import DAO.RegDAO;
import VO.AreaVO;
import VO.CatagoryVO;
import VO.CityVO;

/**
 * Servlet implementation class AreaController
 */
@WebServlet("/AreaController")
public class AreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AreaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		if(flag.equals("search"))
		{
			search(request,response);
		}
		else if(flag.equals("delete"))
		{
			delete(request,response);
		}
		else if(flag.equals("loadcity"))
		{
			loadcity(request,response);
		}
		else if(flag.equals("edit"))
		{
			edit(request,response);
		}
		
		else if(flag.equals("searchareabycity"))
		{
			searchareabycity(request,response);
		}
		
	}
		
		private void searchareabycity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
			int id = Integer.parseInt(request.getParameter("id"));
			
			AreaVO areaVO = new AreaVO();
			areaVO.setId(id);
			AreaDAO areaDAO = new AreaDAO();
			List ls=areaDAO.nearbysearch(areaVO);
			HttpSession s1 = request.getSession();
			s1.setAttribute("aclist", ls);
			RegDAO dao = new RegDAO();
			List name = dao.name();
			s1.setAttribute("name", name);

			
			response.sendRedirect("User/nearbyComplaints.jsp");
	}

		private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			AreaVO areaVO = new AreaVO();
			AreaDAO areaDAO = new AreaDAO();
			List ls=areaDAO.search(areaVO);
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			response.sendRedirect("Admin/viewArea.jsp");

			
		}
		private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			String id=request.getParameter("id");
			
			AreaVO areaVO=new AreaVO();
			areaVO.setId(Integer.parseInt(id));
			
			AreaDAO areaDAO = new AreaDAO();
			areaDAO.delete(areaVO);
			search(request, response);
			
		}
		
		
		
		
		
		private void loadcity(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			CityVO cityVO = new CityVO();
			CityDAO cityDAO = new CityDAO();
			List ls=cityDAO.search(cityVO);
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			response.sendRedirect("Admin/addArea.jsp");
			
			
		}
		private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			String aid=request.getParameter("id");
			
			CityVO cityVO = new CityVO();
			CityDAO cityDAO = new CityDAO();
			List ls1 = cityDAO.search(cityVO);
			
			AreaVO areaVO=new AreaVO();
			areaVO.setId(Integer.parseInt(aid));
			
			AreaDAO areaDAO = new AreaDAO();
			List ls= areaDAO.editarea(areaVO);
			
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			
			s1.setAttribute("list1", ls1);
			response.sendRedirect("Admin/editArea.jsp");
			
		}

	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			String flag = request.getParameter("flag");
			if(flag.equals("insert"))
			{
				insert(request,response);
			}
			else if(flag.equals("update"))
			{
				update(request,response);
				search(request,response);
			}
		}


		private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			int id = Integer.parseInt(request.getParameter("s"));
			
			CityVO cityVO = new CityVO();
			cityVO.setCid(id);
			
			String areaname = request.getParameter("areaname");
			String areadiscription  = request.getParameter("areadiscription");
			
			AreaVO areaVO = new AreaVO();
			areaVO.setAreaName(areaname);
			areaVO.setAreaDiscription(areadiscription);
			areaVO.setDeleteStatus("active");
			
			areaVO.setCityVO(cityVO);
			AreaDAO areaDAO = new AreaDAO();
			areaDAO.insert(areaVO);
			
			response.sendRedirect("Admin/addArea.jsp");
		}
		private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			int id = Integer.parseInt(request.getParameter("id"));
			String areaname = request.getParameter("areaname");
			String areadiscription  = request.getParameter("areadescription");
			int cid = Integer.parseInt(request.getParameter("s"));
			
			CityVO cityVO = new CityVO();
			cityVO.setCid(cid);
			
			AreaVO areaVO = new AreaVO();
			areaVO.setAreaName(areaname);
			areaVO.setId(id);
			areaVO.setCityVO(cityVO);
			areaVO.setAreaDiscription(areadiscription);
			areaVO.setDeleteStatus("active");
			AreaDAO areaDAO = new AreaDAO();
			areaDAO.update(areaVO);
			
		}

	}
