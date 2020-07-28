package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AreaVO;
import VO.CityVO;
import VO.SubCatagoryVO;



public class SubCatagoryDAO {

	public void insert(SubCatagoryVO subcatagoryVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(subcatagoryVO);
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	public void update(SubCatagoryVO subcatagoryVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(subcatagoryVO); 
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	
public List search(SubCatagoryVO subcatagoryVO) {
		
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from SubCatagoryVO where deleteStatus = 'active'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}

public void delete(SubCatagoryVO subCatagoryVO) {
	// TODO Auto-generated method stub
    try{
	SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	Session session = sessionFactory.openSession();
	Transaction tr = session.beginTransaction();
	Query query = session.createQuery("update SubCatagoryVO set  deleteStatus = 'deactive' where id='"+subCatagoryVO.getId()+"'");
	query.executeUpdate();
	tr.commit();
    }
    catch(Exception e)
	{
		e.printStackTrace();
	}

}
public List editsubcatagory(SubCatagoryVO subcatagoryVO) {
		// TODO Auto-generated method stub
		
		List ls=new ArrayList();
		try{
	 		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from SubCatagoryVO where id='"+subcatagoryVO.getId()+"'");
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
	