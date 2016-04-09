package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.OrderRecord;
import com.ssh.service.OrderRecordService;

public class AddOrderRecordAction extends ActionSupport {
	private static final long serialVersionUID = 6079214671790483871L;
	private OrderRecordService orderRecordService;
	private OrderRecord orderRecord;

	public OrderRecordService getOrderService() {
		return orderRecordService;
	}

	public void setOrderRecordService(OrderRecordService orderRecordService) {
		this.orderRecordService = orderRecordService;
	}

	public OrderRecord getOrderRecord() {
		return orderRecord;
	}

	public void setOrderRecord(OrderRecord orderRecord) {
		this.orderRecord = orderRecord;
	}

	@Override
	public String execute() {
		this.orderRecordService.addOrderRecord(orderRecord);
		return SUCCESS;
	}
}
