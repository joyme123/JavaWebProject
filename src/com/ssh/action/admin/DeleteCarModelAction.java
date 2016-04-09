package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.service.CarModelService;

public class DeleteCarModelAction extends ActionSupport {
	private static final long serialVersionUID = 8643100745849114901L;
	private CarModelService carModelService;
	private int id;

	public CarModelService getCarModelService() {
		return carModelService;
	}

	public void setCarModelService(CarModelService carModelService) {
		this.carModelService = carModelService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String execute() {
		this.carModelService.delete(id);
		return SUCCESS;
	}
}
