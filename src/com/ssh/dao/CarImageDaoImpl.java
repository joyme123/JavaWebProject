package com.ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.domain.CarImage;

public class CarImageDaoImpl implements CarImageDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public CarImage getByCarModelId(int carModelId) {
		Session session = sessionFactory.openSession();
		String hql = "from CarImage car_image where car_image.carModelId='" + carModelId + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return (CarImage) list.get(0);
		}
	}

	@SuppressWarnings("rawtypes")
	@Override
	public CarImage getById(int id) {
		Session session = sessionFactory.openSession();
		String hql = "from CarImage car_image where car_image.id='" + id + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			{
				return (CarImage) list.get(0);
			}
		}
	}

	@Override
	public void add(CarImage carImage) {
		Session session = sessionFactory.openSession();
		session.save(carImage);
		session.flush();
		session.close();
	}

	@Override
	public void update(CarImage carImage) {
		Session session = sessionFactory.openSession();
		session.update(carImage);
		session.flush();
		session.close();

	}

	@Override
	public void delete(int id) {
		Session session = sessionFactory.openSession();
		String hql = "delete from CarImage car_image where car_image.id='" + id + "'";
		Query query = session.createQuery(hql);
		query.executeUpdate();
		session.close();
	}
}
