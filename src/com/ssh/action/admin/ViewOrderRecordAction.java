package com.ssh.action.admin;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.OrderRecord;
import com.ssh.service.OrderRecordService;

public class ViewOrderRecordAction extends ActionSupport {
	private static final long serialVersionUID = -5878288434516961465L;
	private OrderRecordService orderRecordService;

	public OrderRecordService getOrderRecordService() {
		return orderRecordService;
	}

	public void setOrderRecordService(OrderRecordService orderRecordService) {
		this.orderRecordService = orderRecordService;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public String execute() {
		Map request = (Map) ActionContext.getContext().get("request");
		ArrayList<OrderRecord> orderRecordList = this.orderRecordService.getOrderRecordList();
		request.put("orderRecordList", orderRecordList);
		return SUCCESS;
	}
}
