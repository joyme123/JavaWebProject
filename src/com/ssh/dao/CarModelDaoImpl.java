package com.ssh.dao;

import java.util.ArrayList;
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
		String hql = "from CarModel car_model where car_model.model_name = '" + name + "'";
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
		String hql = "from CarModel car_model where car_model.id = '" + id + "'";
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
		String hql = "delete from CarModel car_model where car_model.id = " + id;
		Query query = session.createQuery(hql);
		query.executeUpdate();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public QueryResult getCarModelList(int page) {
		Session session = sessionFactory.openSession();
		QueryResult queryResult = new QueryResult();
		int pageSize = queryResult.getPageSize();
		int left = ((page - 1) * pageSize) > 0 ? (page - 1) * pageSize : 0;
		// int right = page * pageSize > 0 ? page * pageSize : 0;
		String hql = "from CarModel car_model order by car_model.id";
		Query query = session.createQuery(hql);
		query.setFirstResult(left);
		query.setMaxResults(pageSize);
		ArrayList<Object> carModelList = (ArrayList<Object>) query.list();
		String hql2 = "select count(*) from CarModel";
		Query query2 = session.createQuery(hql2);
		int count = ((Long) query2.uniqueResult()).intValue();
		queryResult.setResult(carModelList);
		queryResult.setPageCount(count);
		session.close();
		if (carModelList.isEmpty()) {
			return null;
		} else {
			return queryResult;
		}
	}

}
