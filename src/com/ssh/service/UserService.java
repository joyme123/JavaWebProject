package com.ssh.service;

import com.ssh.dao.QueryResult;
import com.ssh.domain.User;

public interface UserService {
	public QueryResult getUserList(int page);

	public void addUser(User user);

	public void editUser(User user);

	public void deleteUserById(int id);

	public User getUserById(int id);
}
