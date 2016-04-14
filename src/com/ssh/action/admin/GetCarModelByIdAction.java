package com.ssh.action.admin;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.Action;
import com.ssh.domain.CarModel;
import com.ssh.service.CarModelService;

public class GetCarModelByIdAction implements Action {
	private int id;
	private InputStream inputStream;
	private CarModelService carModelService;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public CarModelService getCarModelService() {
		return carModelService;
	}

	public InputStream getResult() {
		return this.inputStream;
	}

	public void setCarModelService(CarModelService carModelService) {
		this.carModelService = carModelService;
	}

	@Override
	public String execute() throws Exception {
		CarModel carModel = carModelService.getCarModelById(id);
		if (carModel == null)
			inputStream = new ByteArrayInputStream("null".getBytes("UTF-8"));
		else
			inputStream = new ByteArrayInputStream(carModel.getModelName().getBytes("UTF-8"));
		return SUCCESS;
	}

}
