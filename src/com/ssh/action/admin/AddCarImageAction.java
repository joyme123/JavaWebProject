package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarImage;
import com.ssh.service.CarImageService;

public class AddCarImageAction extends ActionSupport {
	private static final long serialVersionUID = -8825572473566455701L;
	private CarImage carImage;
	private CarImageService carImageService;

	public CarImageService getCarImageService() {
		return carImageService;
	}

	public void setCarImageService(CarImageService carImageService) {
		this.carImageService = carImageService;
	}

	public CarImage getCarImage() {
		return carImage;
	}

	public void setCarImage(CarImage carImage) {
		this.carImage = carImage;
	}

	@Override
	public String execute() {
		this.carImageService.add(carImage);
		return SUCCESS;
	}

}
