package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AreaVO;
import VO.CompanyVO;
import VO.LoginVO;

public class CompanyDAO {
	public void insert(CompanyVO companyVO) {
		// TODO Auto-generated method stub
	try{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(companyVO);
		tr.commit();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	
	

	public List search(CompanyVO companyVO) {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from CompanyVO  where deleteStatus ='active'");
		    ls= q.list();
			tr.commit();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return ls;
	}


	public void delete(CompanyVO companyVO) {
		// TODO Auto-generated method stub
		 try{
				SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				Query query = session.createQuery("update CompanyVO set deleteStatus = 'deactive' where id='"+companyVO.getId()+"'");
				query.executeUpdate();
				tr.commit();
			    }
			    catch(Exception e)
				{
					e.printStackTrace();
				}
	}

	public List<CompanyVO> name(LoginVO vo) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from CompanyVO");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}
	}

