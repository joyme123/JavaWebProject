package com.ssh.action;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.*;
import com.ssh.service.AdminService;  
public class AdminAction extends ActionSupport {  
    private static final long serialVersionUID = 1L;  
  
    private AdminService adminService;  
  
    private Admin admin;  
  
    public Admin getAdmin() {  
        return admin;  
    }  
  
    public void setAdmin(Admin admin) {  
        this.admin = admin;  
    }  
  
    // 注入  
    public void setAdminService(AdminService adminService) {  
        this.adminService = adminService;  
    }  
  
    public String login() {  
        System.out.println("用户名:" + admin.getName()+"密码:"+admin.getPass());  
        admin = adminService.login(admin.getName(), admin.getPass());  
        return SUCCESS;  
    }  
}  