package com.ssh.service;

import java.util.ArrayList;

import com.ssh.domain.User;

public interface UserService {
	public ArrayList<User> getUserList();

	public void addUser(User user);

	public void editUser(User user);

	public void deleteUserById(int id);
}
