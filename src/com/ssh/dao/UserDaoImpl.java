package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.domain.User;

public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<User> getUserList() {
		Session session = sessionFactory.openSession();
		String hql = "from User";
		Query query = session.createQuery(hql);
		ArrayList<User> list = (ArrayList<User>) query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return list;
		}
	}

	@SuppressWarnings("rawtypes")
	@Override
	public User getUserById(int id) {
		Session session = sessionFactory.openSession();
		String hql = "from User user where user.id='" + id + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return (User) list.get(0);
		}
	}

	@Override
	public void addUser(User user) {
		Session session = sessionFactory.openSession();
		session.save(user);
		session.flush();
		session.close();

	}

	@Override
	public void updateUser(User user) {
		Session session = sessionFactory.openSession();
		session.update(user);
		session.flush();
		session.close();

	}

	@Override
	public void deleteUserById(int id) {
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM User user where user.id='" + id + "'";
		Query query = session.createQuery(hql);
		query.executeUpdate();
		session.close();
	}

}
