package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.service.OrderRecordService;

public class DeleteOrderRecordAction extends ActionSupport {
	private static final long serialVersionUID = -7229828036129229897L;
	private OrderRecordService orderRecordService;
	private int id;

	public OrderRecordService getOrderRecordService() {
		return orderRecordService;
	}

	public void setOrderRecordService(OrderRecordService orderRecordService) {
		this.orderRecordService = orderRecordService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String execute() {
		this.orderRecordService.deleteOrderRecordById(id);
		return SUCCESS;
	}
}
