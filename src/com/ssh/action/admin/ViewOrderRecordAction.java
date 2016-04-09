package com.ssh.action.admin;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.QueryResult;
import com.ssh.service.OrderRecordService;

public class ViewOrderRecordAction extends ActionSupport {
	private static final long serialVersionUID = -5878288434516961465L;
	private OrderRecordService orderRecordService;
	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

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
		QueryResult result = this.orderRecordService.getOrderRecordList(page);
		request.put("orderRecordList", result.getResult());
		request.put("pageCount", result.getPageCount());
		return SUCCESS;
	}
}
