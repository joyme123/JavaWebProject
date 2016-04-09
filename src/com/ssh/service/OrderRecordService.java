package com.ssh.service;

import com.ssh.dao.QueryResult;
import com.ssh.domain.OrderRecord;

public interface OrderRecordService {
	public QueryResult getOrderRecordList(int page);

	public void addOrderRecord(OrderRecord orderRecord);

	public void editOrderRecord(OrderRecord orderRecord);

	public void deleteOrderRecordById(int id);
}
