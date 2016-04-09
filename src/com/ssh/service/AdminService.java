package com.ssh.service;

import org.hibernate.HibernateException;

import com.ssh.domain.Admin;

public interface AdminService {
	public void update(Admin admin);

	public void regist(Admin admin) throws HibernateException;

	public Admin login(Admin admin) throws HibernateException;
}