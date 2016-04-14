package com.ssh.domain;

import java.io.Serializable;

public class CarModel implements Serializable {
	private static final long serialVersionUID = 54268139287962912L;
	private int id;
	private String modelName;
	private String doorCount;
	private String seatCount;
	private int price;
	private double engineSpeed;
	private String color;
	private int storage;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getDoorCount() {
		return doorCount;
	}

	public void setDoorCount(String doorCount) {
		this.doorCount = doorCount;
	}

	public String getSeatCount() {
		return seatCount;
	}

	public void setSeatCount(String seatCount) {
		this.seatCount = seatCount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public double getEngineSpeed() {
		return engineSpeed;
	}

	public void setEngineSpeed(double engineSpeed) {
		this.engineSpeed = engineSpeed;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getStorage() {
		return storage;
	}

	public void setStorage(int storage) {
		this.storage = storage;
	}

}
