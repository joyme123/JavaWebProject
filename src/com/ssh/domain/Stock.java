package com.ssh.domain;

import java.io.Serializable;

public class Stock implements Serializable {
	private static final long serialVersionUID = 4773369891386366126L;
	private int id;
	private int carModelId;
	private int stockCount;

	public Stock() {
	}

	public Stock(int id, int carModelId, int stockCount) {
		super();
		this.id = id;
		this.carModelId = carModelId;
		this.stockCount = stockCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCarModelId() {
		return carModelId;
	}

	public void setCarModelId(int carModelId) {
		this.carModelId = carModelId;
	}

	public int getStockCount() {
		return stockCount;
	}

	public void setStockCount(int stockCount) {
		this.stockCount = stockCount;
	}

}
