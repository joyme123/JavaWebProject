package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarModel;
import com.ssh.service.CarModelService;

public class AddCarModelAction extends ActionSupport {
	private static final long serialVersionUID = 2L;
	private CarModelService carModelService;
	private CarModel carModel;

	public CarModel getCarModel() {
		return this.carModel;
	}

	public void setCarModel(CarModel carModel) {
		this.carModel = carModel;
	}

	public void setCarModelService(CarModelService carModelService) {
		this.carModelService = carModelService;
	}

	public CarModelService getCarModelService() {
		return this.carModelService;
	}

	@Override
	public String execute() throws Exception {
		carModelService.add(carModel);
		return SUCCESS;
	}
}
