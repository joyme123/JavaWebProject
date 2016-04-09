package com.ssh.action.show;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.Admin;
import com.ssh.service.AdminService;

public class LoginAdminAction extends ActionSupport {
	private static final long serialVersionUID = -5916221119439849208L;
	private Admin admin;
	private AdminService adminService;

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@Override
	public String execute() {
		Admin myAdmin = this.adminService.login(admin);
		if (myAdmin == null) {
			return ERROR;
		} else {
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("name", myAdmin.getName());
			session.setAttribute("role", "admin");
			return SUCCESS;
		}
	}

}
