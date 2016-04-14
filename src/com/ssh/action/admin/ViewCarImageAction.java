package com.ssh.action.admin;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.service.CarImageService;

@SuppressWarnings("serial")
public class ViewCarImageAction extends ActionSupport {
	private int carModelId;
	private CarImageService carImageService;

	public int getCarModelId() {
		return carModelId;
	}

	public void setCarModelId(int carModelId) {
		this.carModelId = carModelId;
	}

	public CarImageService getCarImageService() {
		return carImageService;
	}

	public void setCarImageService(CarImageService carImageService) {
		this.carImageService = carImageService;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() {
		List carImageList = this.carImageService.getByCarModelId(carModelId);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("carImageList", carImageList);
		return SUCCESS;
	}
}
