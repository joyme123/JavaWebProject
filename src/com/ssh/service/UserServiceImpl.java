package com.ssh.service;

import java.util.ArrayList;

import com.ssh.dao.UserDao;
import com.ssh.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public UserDao getUserDao() {
		return this.userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public ArrayList<User> getUserList() {
		return this.userDao.getUserList();
	}

	@Override
	public void addUser(User user) {
		this.userDao.addUser(user);

	}

	@Override
	public void editUser(User user) {
		this.userDao.updateUser(user);

	}

	@Override
	public void deleteUserById(int id) {
		this.userDao.deleteUserById(id);

	}

}
