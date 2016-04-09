package com.ssh.domain;

import java.io.Serializable;

public class OrderRecord implements Serializable {
	private static final long serialVersionUID = 7938524977476803780L;
	private int id;
	private int carModelId;
	private int userId;
	private int time;
	private double orderMoney;
	private double discount;

	public OrderRecord() {

	}

	public OrderRecord(int id, int carModelId, int userId, int time, double orderMoney, double discount) {
		super();
		this.id = id;
		this.carModelId = carModelId;
		this.userId = userId;
		this.time = time;
		this.orderMoney = orderMoney;
		this.discount = discount;
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

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public double getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(double orderMoney) {
		this.orderMoney = orderMoney;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

}
