package com.ssh.domain;

import java.io.Serializable;

public class CarModel implements Serializable {
	private static final long serialVersionUID = 54268139287962912L;
	private int id;
	private String modelName;
	private int length;
	private int width;
	private int height;
	private int wheelBase;
	private int frontWheelTrack;
	private int rearWheelTrack;
	private int minimumDistance;
	private int dragCoefficient;
	private int minimumTurningDiameter;
	private int weight;
	private int allowMaxWeight;
	private int doorCount;
	private int seatCount;
	private int trunkVolume;
	private int fuelTankVolume;
	private String color;

	public CarModel() {
		super();
	}

	public CarModel(int id, String modelName, int length, int width, int height, int wheelBase, int frontWheelTrack,
			int rearWheelTrack, int minimumDistance, int dragCoefficient, int minimumTurningDiameter, int weight,
			int allowMaxWeight, int doorCount, int seatCount, int trunkVolume, int fuelTankVolume, String color) {
		super();
		this.id = id;
		this.modelName = modelName;
		this.length = length;
		this.width = width;
		this.height = height;
		this.wheelBase = wheelBase;
		this.frontWheelTrack = frontWheelTrack;
		this.rearWheelTrack = rearWheelTrack;
		this.minimumDistance = minimumDistance;
		this.dragCoefficient = dragCoefficient;
		this.minimumTurningDiameter = minimumTurningDiameter;
		this.weight = weight;
		this.allowMaxWeight = allowMaxWeight;
		this.doorCount = doorCount;
		this.seatCount = seatCount;
		this.trunkVolume = trunkVolume;
		this.fuelTankVolume = fuelTankVolume;
		this.color = color;
	}

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

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWheelBase() {
		return wheelBase;
	}

	public void setWheelBase(int wheelBase) {
		this.wheelBase = wheelBase;
	}

	public int getFrontWheelTrack() {
		return frontWheelTrack;
	}

	public void setFrontWheelTrack(int frontWheelTrack) {
		this.frontWheelTrack = frontWheelTrack;
	}

	public int getRearWheelTrack() {
		return rearWheelTrack;
	}

	public void setRearWheelTrack(int rearWheelTrack) {
		this.rearWheelTrack = rearWheelTrack;
	}

	public int getMinimumDistance() {
		return minimumDistance;
	}

	public void setMinimumDistance(int minimumDistance) {
		this.minimumDistance = minimumDistance;
	}

	public int getDragCoefficient() {
		return dragCoefficient;
	}

	public void setDragCoefficient(int dragCoefficient) {
		this.dragCoefficient = dragCoefficient;
	}

	public int getMinimumTurningDiameter() {
		return minimumTurningDiameter;
	}

	public void setMinimumTurningDiameter(int minimumTurningDiameter) {
		this.minimumTurningDiameter = minimumTurningDiameter;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getAllowMaxWeight() {
		return allowMaxWeight;
	}

	public void setAllowMaxWeight(int allowMaxWeight) {
		this.allowMaxWeight = allowMaxWeight;
	}

	public int getDoorCount() {
		return doorCount;
	}

	public void setDoorCount(int doorCount) {
		this.doorCount = doorCount;
	}

	public int getSeatCount() {
		return seatCount;
	}

	public void setSeatCount(int seatCount) {
		this.seatCount = seatCount;
	}

	public int getTrunkVolume() {
		return trunkVolume;
	}

	public void setTrunkVolume(int trunkVolume) {
		this.trunkVolume = trunkVolume;
	}

	public int getFuelTankVolume() {
		return fuelTankVolume;
	}

	public void setFuelTankVolume(int fuelTankVolume) {
		this.fuelTankVolume = fuelTankVolume;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

}
