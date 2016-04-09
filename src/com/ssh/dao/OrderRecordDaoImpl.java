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
	public QueryResult getOrderRecordList(int page) {
		Session session = sessionFactory.openSession();
		QueryResult queryResult = new QueryResult();
		int pageSize = queryResult.getPageSize();
		int left = ((page - 1) * pageSize) > 0 ? (page - 1) * pageSize : 0;
		int right = page * pageSize > 0 ? page * pageSize : 0;
		String hql = "from OrderRecord";
		Query query = session.createQuery(hql);
		query.setFirstResult(left);
		query.setMaxResults(right);
		ArrayList<Object> list = (ArrayList<Object>) query.list();
		String hql2 = "select count(*) from OrderRecord";
		Query query2 = session.createQuery(hql2);
		int count = ((Long) query2.uniqueResult()).intValue();
		queryResult.setResult(list);
		queryResult.setPageCount(count);
		session.close();
		if (list.isEmpty()) {
			return null;
		} else {
			return queryResult;
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
