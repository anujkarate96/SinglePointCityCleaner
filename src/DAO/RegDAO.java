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
import VO.LoginVO;
import VO.RegVO;

public class RegDAO {
	public void insert(RegVO regvo) {
		// TODO Auto-generated method stub
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(regvo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insert1(LoginVO loginvo) {

		// TODO Auto-generated method stub
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(loginvo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List authentication(LoginVO loginVO) {
		List ls = new ArrayList();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery(
					"from LoginVO WHERE email='" + loginVO.getEmail() + "' AND pass='" + loginVO.getPass() + "' ");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List name() {
		List ls = new ArrayList();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from RegVO");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List editprofile(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from RegVO where loginvo='" + loginVO.getLid() + "'");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List searchProduct(LoginVO loginVO) {

		List ls = new ArrayList();
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from LoginVO ");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;

	}

	public void updatepassword(LoginVO loginVO) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();

			Query query = session.createQuery("update from LoginVO set pass='" + loginVO.getPass() + "' where email='"
					+ loginVO.getEmail() + "'");
			query.executeUpdate();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void updatelogin(LoginVO loginVO) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();

			Query query = session.createQuery(
					"update from LoginVO set email='" + loginVO.getEmail() + "' where lid='" + loginVO.getLid() + "'");
			query.executeUpdate();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void updatereg(RegVO regVO) {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(regVO);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List name(LoginVO vo) {

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		Query query = session.createQuery("from RegVO where loginvo='" + vo.getLid() + "'");
		List<RegVO> ls = query.list();
		return ls;
	}

	public List loadCompany(CityVO cityVO) {

	
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		Query query = session.createQuery("from CompanyVO where cityVO='" + cityVO.getCid() + "'");
		List ls = query.list();
		return ls;
	
	
	
	
	
	}

}
