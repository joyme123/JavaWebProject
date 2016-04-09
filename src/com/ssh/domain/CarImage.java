package com.ssh.domain;

import java.io.Serializable;

public class CarImage implements Serializable {
	private static final long serialVersionUID = 8939778162583957656L;
	private int id;
	private int carModelId;

	public int getCarModelId() {
		return carModelId;
	}

	public void setCarModelId(int carModelId) {
		this.carModelId = carModelId;
	}

	private String imgUrl;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

}
