package com.ssh.service;

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

	@Override
	public CarImage getByCarModelId(int carModelId) {
		return this.carImageDao.getByCarModelId(carModelId);
	}

	@Override
	public CarImage getById(int id) {

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
