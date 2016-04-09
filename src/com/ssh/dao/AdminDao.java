package com.ssh.dao;

import com.ssh.domain.Admin;

public interface AdminDao {

	public void update(Admin admin);

	public void regist(Admin admin);

	public Admin login(Admin admin);
}
