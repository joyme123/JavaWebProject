package com.ssh.dao;

import java.util.List;

import com.ssh.domain.CarImage;

public interface CarImageDao {
	@SuppressWarnings("rawtypes")
	public List getByCarModelId(int carModelId);

	@SuppressWarnings("rawtypes")
	public List getById(int id);

	public void add(CarImage carImage);

	public void update(CarImage carImage);

	public void delete(int id);
}
