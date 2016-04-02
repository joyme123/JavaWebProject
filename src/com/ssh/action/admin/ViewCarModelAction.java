package com.ssh.action.admin;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarModel;
import com.ssh.service.CarModelService;

public class ViewCarModelAction extends ActionSupport {
	private static final long serialVersionUID = 6413415887315891325L;
	private CarModelService carModelService;

	public CarModelService getCarModelService() {
		return carModelService;
	}

	public void setCarModelService(CarModelService carModelService) {
		this.carModelService = carModelService;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() {
		ArrayList<CarModel> carModelList = this.carModelService.getCarModelList();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("carModelList", carModelList);
		return SUCCESS;
	}

}
