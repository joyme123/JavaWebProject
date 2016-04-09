package com.ssh.service;

import org.hibernate.HibernateException;

import com.ssh.dao.AdminDao;
import com.ssh.domain.Admin;

public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public void update(Admin admin) {
		this.adminDao.update(admin);
	}

	@Override
	public void regist(Admin admin) throws HibernateException {
		this.adminDao.regist(admin);

	}

	@Override
	public Admin login(Admin admin) throws HibernateException {
		return this.adminDao.login(admin);

	}

}