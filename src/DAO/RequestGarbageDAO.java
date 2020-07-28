package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CompanyVO;
import VO.LoginVO;
import VO.RequestGarbageVO;

public class RequestGarbageDAO {

	public void insert(RequestGarbageVO requestgarbageVO) {
		// TODO Auto-generated method stub
		try
		{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(requestgarbageVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
		
	}

	public List search(RequestGarbageVO requestgarbageVO) {
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from RequestGarbageVO where deletestatus='active'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}
	
	public List replyRequest(RequestGarbageVO requestgarbageVO) {
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from RequestGarbageVO where rgid='"+requestgarbageVO.getRgid()+"'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}
	public List replyAdmin() {
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from LoginVO where usertype='admin'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}

	public void updateRequest(RequestGarbageVO requestgarbageVO) {

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(requestgarbageVO);
		tr.commit();
		session.close();
		
		
	}

	public int searchCompany(RequestGarbageVO requestGarbageVO) {

		List<RequestGarbageVO> ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from RequestGarbageVO where rgid='"+requestGarbageVO.getRgid()+"'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls.get(0).getRequestTo().getId();
		
		
	}

	public int getCompanyId(CompanyVO companyVO) {

	
	
		List<CompanyVO> ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from CompanyVO where loginVO='"+companyVO.getId()+"'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls.get(0).getId();

		
	
	
	
	
	}

	public List searchREQUEST(LoginVO loginVO) {

		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from RequestGarbageVO where requestFrom='"+loginVO.getLid()+"'");
		    ls= q.list();
		    System.err.println("list size is ---------------------"+ls.size());
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;

	
	
	}

	public List searchComplaint2() {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from RequestGarbageVO");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}

	public void delete(RequestGarbageVO requestgarbageVO) {
		// TODO Auto-generated method stub

		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query query = session.createQuery("update RequestGarbageVO set deleteStatus = 'deactive' where id='"+requestgarbageVO.getRgid()+"'");
			query.executeUpdate();
			tr.commit();
		    }
		    catch(Exception e)
			{
				e.printStackTrace();
			}
	}	
	

}
