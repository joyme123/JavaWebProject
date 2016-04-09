package com.ssh.service;

import com.ssh.dao.OrderRecordDao;
import com.ssh.dao.QueryResult;
import com.ssh.domain.OrderRecord;

public class OrderRecordServiceImpl implements OrderRecordService {
	private OrderRecordDao orderRecordDao;

	public OrderRecordDao getOrderRecordDao() {
		return orderRecordDao;
	}

	public void setOrderRecordDao(OrderRecordDao orderRecordDao) {
		this.orderRecordDao = orderRecordDao;
	}

	@Override
	public QueryResult getOrderRecordList(int page) {
		return this.orderRecordDao.getOrderRecordList(page);
	}

	@Override
	public void addOrderRecord(OrderRecord orderRecord) {
		this.orderRecordDao.addOrderRecord(orderRecord);

	}

	@Override
	public void editOrderRecord(OrderRecord orderRecord) {
		this.orderRecordDao.updateOrderRecord(orderRecord);

	}

	@Override
	public void deleteOrderRecordById(int id) {
		this.orderRecordDao.deleteOrderRecordById(id);

	}

}
