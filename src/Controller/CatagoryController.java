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

import VO.CatagoryVO;
import VO.CityVO;

import DAO.CatagoryDAO;
import DAO.CityDAO;

@WebServlet("/CatagoryController")
public class CatagoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CatagoryController() {
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
		}else if(flag.equals("delete"))
		{
			delete(request,response);
		}
		else if(flag.equals("edit"))
		{
			edit(request,response);
		}
		else if(flag.equals("loadsub"))
		{
			loadsub(request,response);
		}
	
		}

		private void loadsub(HttpServletRequest request, HttpServletResponse response) throws IOException {

			
			int cid = Integer.parseInt(request.getParameter("cid"));
			
			CatagoryVO catagoryVO = new CatagoryVO();
			catagoryVO.setCaid(cid); 
			
			CatagoryDAO catagoryDAO = new CatagoryDAO();
			List ls1=catagoryDAO.searchSub(catagoryVO);
			
			HttpSession s1 = request.getSession();
			s1.setAttribute("sublist", ls1);
			
			response.sendRedirect("User/subcatjson.jsp");
			
			
			
			
	}


		private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			CatagoryVO catagoryVO = new CatagoryVO();
			CatagoryDAO catagoryDAO = new CatagoryDAO();
			List ls=catagoryDAO.search(catagoryVO);
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			response.sendRedirect("Admin/viewCatagory.jsp");
			
			
		
	}
		private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			String caid=request.getParameter("id");
			
			CatagoryVO catagoryVO=new CatagoryVO();
            catagoryVO.setCaid(Integer.parseInt(caid));
			
			CatagoryDAO catagoryDAO = new CatagoryDAO();
			catagoryDAO.delete(catagoryVO);
			search(request, response);
			
		}
		private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			String caid=request.getParameter("id");
			
			CatagoryVO catagoryVO=new CatagoryVO();
			catagoryVO.setCaid(Integer.parseInt(caid));
			
			CatagoryDAO catagoryDAO = new CatagoryDAO();
			List ls= catagoryDAO.editcatagory(catagoryVO);
			
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			response.sendRedirect("Admin/editCatagory.jsp");
			
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
		}
		else if(flag.equals("update"))
		{
			update(request,response);
		}
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String categoryname = request.getParameter("categoryname");
		String categorydiscription  = request.getParameter("categorydiscription");
		
		CatagoryVO catagoryVO = new CatagoryVO();
		catagoryVO.setCatagoryName(categoryname);
		catagoryVO.setCatagoryDiscription(categorydiscription);
		catagoryVO.setDeleteStatus("active");
		
		CatagoryDAO catagoryDAO = new CatagoryDAO();
		catagoryDAO.insert(catagoryVO);
		
		response.sendRedirect("Admin/addCategory.jsp");
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String catagoryname = request.getParameter("catagoryname");
		String catagorydiscription  = request.getParameter("catagorydescription");
		
		CatagoryVO catagoryVO = new CatagoryVO();
		catagoryVO.setCatagoryName(catagoryname);
		catagoryVO.setCaid(id);
		catagoryVO.setCatagoryDiscription(catagorydiscription);
		catagoryVO.setDeleteStatus("active");
		CatagoryDAO catagoryDAO = new CatagoryDAO();
		catagoryDAO.update(catagoryVO);
		
		response.sendRedirect("Admin/addCategory.jsp");
	}

}