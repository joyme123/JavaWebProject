package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.domain.Admin;

public class AdminDaoImpl implements AdminDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void regist(Admin admin) {
		Session session = sessionFactory.openSession();
		session.save(admin);
		session.flush();
		session.close();
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Admin login(Admin admin) {
		Session session = sessionFactory.openSession();
		String hql = "from User user where admin.username = '" + admin.getName() + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return (Admin) list.get(0);
		}
	}

	@Override
	public void update(Admin admin) {
		Session session = sessionFactory.openSession();
		session.update(admin);
		session.flush();
		session.close();

	}

}