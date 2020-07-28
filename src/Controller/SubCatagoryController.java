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
import DAO.SubCatagoryDAO;
import VO.AreaVO;
import VO.CatagoryVO;
import VO.CityVO;
import VO.SubCatagoryVO;

/**
 * Servlet implementation class SubCatagoryController
 */
@WebServlet("/SubCatagoryController")
public class SubCatagoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCatagoryController() {
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
		else if(flag.equals("loadcatagory"))
		{
			loadcatagory(request,response);
		}
		else if(flag.equals("edit"))
		{
		     edit(request,response);
		}
		}

		private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			SubCatagoryVO subcatagoryVO = new SubCatagoryVO();
			SubCatagoryDAO subcatagoryDAO = new SubCatagoryDAO();
			List ls=subcatagoryDAO.search(subcatagoryVO);
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			response.sendRedirect("Admin/viewSubcatagory.jsp");
		}
			
			private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
				// TODO Auto-generated method stub
				
				String id=request.getParameter("id");
				
				SubCatagoryVO subCatagoryVO=new SubCatagoryVO();
				subCatagoryVO.setId(Integer.parseInt(id));
				
				SubCatagoryDAO subCatagoryDAO = new SubCatagoryDAO();
				subCatagoryDAO.delete(subCatagoryVO);
				search(request, response);
				
			}
			

		private void loadcatagory(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			CatagoryVO catagoryVO = new CatagoryVO();
			CatagoryDAO catagoryDAO = new CatagoryDAO();
			List ls=catagoryDAO.search(catagoryVO);
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			response.sendRedirect("Admin/addSubCategory.jsp");
			
			
		}
		private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			
			String id=request.getParameter("id");
			
			CatagoryVO catagoryVO = new CatagoryVO();
			CatagoryDAO catagoryDAO = new CatagoryDAO();
			List ls1 = catagoryDAO.search(catagoryVO);
			
			SubCatagoryVO subcatagoryVO=new SubCatagoryVO();
			subcatagoryVO.setId(Integer.parseInt(id));
			
			SubCatagoryDAO subcatagoryDAO = new SubCatagoryDAO();
			List ls= subcatagoryDAO.editsubcatagory(subcatagoryVO);
			
			HttpSession s1 = request.getSession();
			s1.setAttribute("list", ls);
			
			s1.setAttribute("list1", ls1);
			response.sendRedirect("Admin/editSubcatagory.jsp");
			
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
	int id = Integer.parseInt(request.getParameter("k"));
	
	CatagoryVO catagoryVO = new CatagoryVO();
	catagoryVO.setCaid(id);
	
	String subcatagoryname = request.getParameter("subcatname");
	String subcatagorydiscription  = request.getParameter("subcatdescription");
	
	SubCatagoryVO subcatagoryVO = new SubCatagoryVO();
	subcatagoryVO.setSubcatagoryName(subcatagoryname);
	subcatagoryVO.setSubcatagoryDiscription(subcatagorydiscription);
	subcatagoryVO.setDeleteStatus("active");
	subcatagoryVO.setCatagoryVO(catagoryVO);
	SubCatagoryDAO subcatagoryDAO = new SubCatagoryDAO();
	subcatagoryDAO.insert(subcatagoryVO);
	
	response.sendRedirect("Admin/addSubCategory.jsp");
}
private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
	// TODO Auto-generated method stub
	int id = Integer.parseInt(request.getParameter("id"));
	String subcatagoryname = request.getParameter("subcatname");
	String subcatagorydiscription  = request.getParameter("subcatdescription");
	int caid = Integer.parseInt(request.getParameter("k"));
	
	CatagoryVO catagoryVO = new CatagoryVO();
	catagoryVO.setCaid(caid);
	
	SubCatagoryVO subcatagoryVO = new SubCatagoryVO();
	subcatagoryVO.setSubcatagoryName(subcatagoryname);
	subcatagoryVO.setId(id);
	subcatagoryVO.setCatagoryVO(catagoryVO);
	subcatagoryVO.setSubcatagoryDiscription(subcatagorydiscription);
	subcatagoryVO.setDeleteStatus("active");
	SubCatagoryDAO subcatagoryDAO = new SubCatagoryDAO();
	subcatagoryDAO.update(subcatagoryVO);
	
}
}