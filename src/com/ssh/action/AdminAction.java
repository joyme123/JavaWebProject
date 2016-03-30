package com.ssh.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.Admin;
import com.ssh.service.AdminService;

public class AdminAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private AdminService adminService;
	private Admin admin;
	private String tip;

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String getTip() {
		return this.tip;
	}

	public Admin getAdmin() {
		return this.admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public AdminService getAdminService() {
		return this.adminService;
	}

	// 注入
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public String regist() throws Exception {
		System.out.println("name:" + admin.getName());
		System.out.println("pass:" + admin.getPass());
		adminService.regist(admin);
		ActionContext context = ActionContext.getContext();
		Integer counter = (Integer) context.get("counter");
		if (counter == null) {
			counter = 1;
		} else {
			counter++;
		}
		context.getApplication().put("counter", counter);
		context.getSession().put("admin", admin.getName() + "!!!");
		setTip("tip:注册成功了");
		return SUCCESS;
	}

	public String login() throws Exception {
		adminService.login(admin);
		return SUCCESS;
	}
}