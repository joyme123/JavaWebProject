package com.ssh.service;

import java.util.ArrayList;

import com.ssh.domain.OrderRecord;

public interface OrderRecordService {
	public ArrayList<OrderRecord> getOrderRecordList();

	public void addOrderRecord(OrderRecord orderRecord);

	public void editOrderRecord(OrderRecord orderRecord);

	public void deleteOrderRecordById(int id);
}
