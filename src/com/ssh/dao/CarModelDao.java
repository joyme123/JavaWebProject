package com.ssh.dao;

import java.util.ArrayList;

import com.ssh.domain.CarModel;

public interface CarModelDao {

	public ArrayList<CarModel> getCarModelList();

	public void add(CarModel carModel);

	public CarModel getCarModelByName(String name);

	public CarModel getCarModelById(int id);

	public void update(CarModel carModel);

	public void delete(int id);
}
