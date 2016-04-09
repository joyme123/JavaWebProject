package com.ssh.dao;

import com.ssh.domain.OrderRecord;

public interface OrderRecordDao {
	public QueryResult getOrderRecordList(int page);

	public OrderRecord getOrderRecordById(int id);

	public void addOrderRecord(OrderRecord orderRecord);

	public void updateOrderRecord(OrderRecord orderRecord);

	public void deleteOrderRecordById(int id);
}
