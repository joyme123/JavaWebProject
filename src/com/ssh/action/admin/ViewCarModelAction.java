package com.ssh.action.admin;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.QueryResult;
import com.ssh.service.CarModelService;

public class ViewCarModelAction extends ActionSupport {
	private static final long serialVersionUID = 6413415887315891325L;
	private CarModelService carModelService;
	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public CarModelService getCarModelService() {
		return carModelService;
	}

	public void setCarModelService(CarModelService carModelService) {
		this.carModelService = carModelService;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() {
		if (page <= 0) {
			page = 1;
		}
		QueryResult result = this.carModelService.getCarModelList(this.page);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("carModelList", result.getResult());
		request.put("pageCount", result.getPageCount());
		return SUCCESS;
	}

}
