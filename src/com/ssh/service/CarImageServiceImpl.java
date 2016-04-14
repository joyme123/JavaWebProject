package com.ssh.service;

import java.util.List;

import com.ssh.dao.CarImageDao;
import com.ssh.domain.CarImage;

public class CarImageServiceImpl implements CarImageService {
	private CarImageDao carImageDao;

	public CarImageDao getCarImageDao() {
		return carImageDao;
	}

	public void setCarImageDao(CarImageDao carImageDao) {
		this.carImageDao = carImageDao;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List getByCarModelId(int carModelId) {
		return this.carImageDao.getByCarModelId(carModelId);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List getById(int id) {

		return this.carImageDao.getById(id);
	}

	@Override
	public void add(CarImage carImage) {
		this.carImageDao.add(carImage);

	}

	@Override
	public void update(CarImage carImage) {
		this.carImageDao.update(carImage);

	}

	@Override
	public void delete(int id) {
		this.carImageDao.delete(id);

	}

}
