package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;

public class CityDAO {

	public void insert(CityVO cityVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(cityVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	public void update(CityVO cityVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(cityVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}

	public List search(CityVO cityVO) {
		
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from CityVO where deleteStatus = 'active'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}

	public void delete(CityVO cityVO) {
		// TODO Auto-generated method stub
        try{
 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("update CityVO set  deleteStatus = 'deactive' where cid='"+cityVO.getCid()+"'");
		query.executeUpdate();
		tr.commit();
        }
        catch(Exception e)
		{
			e.printStackTrace();
		}

				
	}

	public List editcity(CityVO cityVO) {
		// TODO Auto-generated method stub
		
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from CityVO where cid='"+cityVO.getCid()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
	}
	public List loadArea(CityVO cityVO) {

		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from AreaVO where cityVO='"+cityVO.getCid()+"'");
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
