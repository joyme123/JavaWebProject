package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.domain.CarModel;

public class CarModelDaoImpl implements CarModelDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(CarModel carModel) {
		Session session = sessionFactory.openSession();
		session.save(carModel);
		session.flush();
		session.close();

	}

	@SuppressWarnings("rawtypes")
	@Override
	public CarModel getCarModelByName(String name) {
		Session session = sessionFactory.openSession();
		String hql = "from User user where car_model.model_name = '" + name + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return (CarModel) list.get(0);
		}
	}

	@SuppressWarnings("rawtypes")
	@Override
	public CarModel getCarModelById(int id) {
		Session session = sessionFactory.openSession();
		String hql = "from User user where car_model.id = '" + id + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return (CarModel) list.get(0);
		}
	}

	@Override
	public void update(CarModel carModel) {
		Session session = sessionFactory.openSession();
		session.update(carModel);
		session.flush();
		session.close();
	}

	@Override
	public void delete(int id) {
		Session session = sessionFactory.openSession();
		String hql = "delete from car_model journal where id = " + id;
		Query query = session.createQuery(hql);
		query.executeUpdate();
		session.close();
	}

}
