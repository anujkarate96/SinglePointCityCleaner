package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.FeedbackVO;

public class FeedbackDAO {

	public void save(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub
		try{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(feedbackVO); 
			tr.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	public List search(FeedbackVO feedbackVO) {
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from FeedbackVO");
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

}
