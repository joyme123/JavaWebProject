package com.ssh.service;

import org.hibernate.HibernateException;

import com.ssh.dao.QueryResult;
import com.ssh.domain.CarModel;

public interface CarModelService {
	public QueryResult getCarModelList(int page);

	public void add(CarModel carModel) throws HibernateException;

	public CarModel getCarModelByName(String name) throws HibernateException;

	public CarModel getCarModelById(int id) throws HibernateException;

	public void update(CarModel carModel) throws HibernateException;

	public void delete(int id) throws HibernateException;
}
