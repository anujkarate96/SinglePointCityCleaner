package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AreaVO;
import VO.CatagoryVO;
import VO.CityVO;

public class AreaDAO {

	public void insert(AreaVO areaVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(areaVO);
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	
	public void update(AreaVO areaVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(areaVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	
public List search(AreaVO areaVO) {
		
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from AreaVO where deleteStatus = 'active'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}
public void delete(AreaVO areaVO) {
	// TODO Auto-generated method stub
    try{
	SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	Session session = sessionFactory.openSession();
	Transaction tr = session.beginTransaction();
	Query query = session.createQuery("update AreaVO set deleteStatus = 'deactive' where id='"+areaVO.getId()+"'");
	query.executeUpdate();
	tr.commit();
    }
    catch(Exception e)
	{
		e.printStackTrace();
	}

			
}

public List editarea(AreaVO areaVO) {
		// TODO Auto-generated method stub
		
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from AreaVO where id='"+areaVO.getId()+"'");
			ls= q.list();
			tr.commit();
	        }
	        catch(Exception e)
			{
				e.printStackTrace();
			}
		return ls;
	}

public List nearbysearch(AreaVO areaVO) {
	// TODO Auto-generated method stub
	List ls=new ArrayList();
	try{
 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from ComplaintVO where areaVO='"+areaVO.getId()+"'");
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
	