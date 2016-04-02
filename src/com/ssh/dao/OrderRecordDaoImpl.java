package com.ssh.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ssh.domain.OrderRecord;

public class OrderRecordDaoImpl implements OrderRecordDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<OrderRecord> getOrderRecordList() {
		Session session = sessionFactory.openSession();
		String hql = "from OrderRecord";
		Query query = session.createQuery(hql);
		ArrayList<OrderRecord> list = (ArrayList<OrderRecord>) query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return list;
		}
	}

	@SuppressWarnings("rawtypes")
	@Override
	public OrderRecord getOrderRecordById(int id) {
		Session session = sessionFactory.openSession();
		String hql = "from OrderRecord order_record where order_record.id='" + id + "'";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return (OrderRecord) list.get(0);
		}
	}

	@Override
	public void addOrderRecord(OrderRecord orderRecord) {
		Session session = sessionFactory.openSession();
		session.save(orderRecord);
		session.flush();
		session.close();

	}

	@Override
	public void updateOrderRecord(OrderRecord orderRecord) {
		Session session = sessionFactory.openSession();
		session.update(orderRecord);
		session.flush();
		session.close();

	}

	@Override
	public void deleteOrderRecordById(int id) {
		Session session = sessionFactory.openSession();
		String hql = "DELETE FROM OrderRecord order_record where order_record.id='" + id + "'";
		Query query = session.createQuery(hql);
		query.executeUpdate();
		session.close();

	}

}
