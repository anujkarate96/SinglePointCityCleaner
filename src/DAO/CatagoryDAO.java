package DAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CatagoryVO;
import VO.CityVO;

public class CatagoryDAO {

	public void insert(CatagoryVO catagoryVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(catagoryVO);
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	}
	

	public List search(CatagoryVO catagoryVO) {
		
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from CatagoryVO  where deleteStatus ='active'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}
	public void update(CatagoryVO catagoryVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(catagoryVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	public void delete(CatagoryVO catagoryVO) {
		// TODO Auto-generated method stub
        try{
 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("update CatagoryVO set  deleteStatus = 'deactive' where caid='"+catagoryVO.getCaid()+"'");
		query.executeUpdate();
		tr.commit();
        }
        catch(Exception e)
		{
			e.printStackTrace();
		}

				
	}
	public List editcatagory(CatagoryVO catagoryVO) {
		// TODO Auto-generated method stub
		
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from CatagoryVO where caid='"+catagoryVO.getCaid()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
	}


	public List searchSub(CatagoryVO catagoryVO) {
		
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from SubCatagoryVO where catagoryVO='"+catagoryVO.getCaid()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
		
		
		
	}
}
