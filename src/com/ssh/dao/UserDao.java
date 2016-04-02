package com.ssh.dao;

import java.util.ArrayList;

import com.ssh.domain.User;

public interface UserDao {
	public ArrayList<User> getUserList();

	public User getUserById(int id);

	public void addUser(User user);

	public void updateUser(User user);

	public void deleteUserById(int id);
}
