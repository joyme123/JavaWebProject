package com.ssh.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import com.ssh.dao.CarModelDao;
import com.ssh.domain.CarModel;

public class CarModelServiceImpl implements CarModelService {
	private CarModelDao carModelDao;

	public void setCarModelDao(CarModelDao dao) {
		this.carModelDao = dao;
	}

	@Override
	public void add(CarModel carModel) throws HibernateException {
		this.carModelDao.add(carModel);

	}

	@Override
	public CarModel getCarModelByName(String name) throws HibernateException {
		return this.carModelDao.getCarModelByName(name);
	}

	@Override
	public CarModel getCarModelById(int id) throws HibernateException {
		return this.carModelDao.getCarModelById(id);
	}

	@Override
	public void update(CarModel carModel) throws HibernateException {
		this.carModelDao.update(carModel);
	}

	@Override
	public void delete(int id) throws HibernateException {
		this.carModelDao.delete(id);
	}

	@Override
	public ArrayList<CarModel> getCarModelList() {
		return this.carModelDao.getCarModelList();

	}

}
