package com.ssh.dao;

import java.util.ArrayList;

import com.ssh.domain.OrderRecord;

public interface OrderRecordDao {
	public ArrayList<OrderRecord> getOrderRecordList();

	public OrderRecord getOrderRecordById(int id);

	public void addOrderRecord(OrderRecord orderRecord);

	public void updateOrderRecord(OrderRecord orderRecord);

	public void deleteOrderRecordById(int id);
}
