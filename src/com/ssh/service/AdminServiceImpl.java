package com.ssh.service;

import com.ssh.dao.AdminDao;
import com.ssh.domain.Admin;  
public class AdminServiceImpl implements AdminService {  
  
    private AdminDao adminDao;  
    public void setAdminDao(AdminDao adminDao) {  
        this.adminDao = adminDao;  
    }  
    public Admin login(String name, String pass) {  
        // TODO Auto-generated method stub  
        return adminDao.login(name, pass);  
    }  
}  