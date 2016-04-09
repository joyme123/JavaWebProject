package com.ssh.dao;

import com.ssh.domain.User;

public interface UserDao {
	public QueryResult getUserList(int page);

	public User getUserById(int id);

	public void addUser(User user);

	public void updateUser(User user);

	public void deleteUserById(int id);
}
