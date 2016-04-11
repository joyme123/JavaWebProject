package com.ssh.service;

import com.ssh.domain.CarImage;

public interface CarImageService {
	public CarImage getByCarModelId(int carModelId);

	public CarImage getById(int id);

	public void add(CarImage carImage);

	public void update(CarImage carImage);

	public void delete(int id);
}
