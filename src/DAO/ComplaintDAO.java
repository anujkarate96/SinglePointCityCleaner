package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CompanyVO;
import VO.ComplaintVO;
import VO.FeedbackVO;
import VO.LoginVO;

public class ComplaintDAO {
	
	public void insert(ComplaintVO complaintVO) {
		// TODO Auto-generated method stubtry{
		try
		{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(complaintVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
		
	}
	
	public List searchAdmin(){
		
		
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from LoginVO where usertype='admin'");
		List<LoginVO> admin = query.list();
		return admin;
		
		
	}
	
	public List search() {
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from ComplaintVO  ORDER BY complaintid desc");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	
		// TODO Auto-generated method stub
		
	}

	public List viewcomplaint(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplaintVO where complaintfrom='"+loginVO.getLid()+"' ORDER BY complaintid desc");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
		{
			
				e.printStackTrace();
			}
		return ls;

	}

	public List searchComplaint(ComplaintVO complaintVO) {

	
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplaintVO where company='"+complaintVO.getCompany().getId()+"' and deletestatus='active' ");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
	}

	public List replyAdmin(ComplaintVO complaintVO) {

		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplaintVO where complaintid='"+complaintVO.getComplaintid()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
	
	}

	public List viewAdminComplaint(LoginVO loginVO) {

		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplaintVO where complaintTo='"+loginVO.getLid()+"' and complaintStatus='replied'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
	}

	public int searchCompany(LoginVO loginVO) {

		
		List<CompanyVO> ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from CompanyVO where loginVO='"+loginVO.getLid()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls.get(0).getId();
		
	}
	
	public List searchComplaint2() {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from ComplaintVO");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}

	public List searchRepliedCom() {
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from ComplaintVO where complaintStatus='replied'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	
	
	}

	public void delete(ComplaintVO complaintVO) {
		// TODO Auto-generated method stub
		
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query query = session.createQuery("update ComplaintVO set deleteStatus = 'deactive' where id='"+complaintVO.getComplaintid()+"'");
			query.executeUpdate();
			tr.commit();
		    }
		    catch(Exception e)
			{
				e.printStackTrace();
			}
	}


	/*public List replyComplaint(ComplaintVO complaintVO) {
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplaintVO where no='"+complaintVO.getComplaintid()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;

	}

	public void updatereply(ComplaintVO complaintVO)
	{
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(complaintVO); 
			tr.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}*/
}
	

