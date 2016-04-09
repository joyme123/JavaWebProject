package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarModel;
import com.ssh.service.CarModelService;

public class EditCarModelAction extends ActionSupport {
	private static final long serialVersionUID = 1162546203892287479L;
	private CarModelService carModelService;
	private CarModel carModel;

	public CarModelService getCarModelService() {
		return carModelService;
	}

	public void setCarModelService(CarModelService carModelService) {
		this.carModelService = carModelService;
	}

	public CarModel getCarModel() {
		return carModel;
	}

	public void setCarModel(CarModel carModel) {
		this.carModel = carModel;
	}

	@Override
	public String execute() {
		this.carModelService.update(carModel);
		return SUCCESS;
	}
}
