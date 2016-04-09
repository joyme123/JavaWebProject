package com.ssh.action.admin;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAdminAction extends ActionSupport {
	private static final long serialVersionUID = -8226847568503326985L;

	@Override
	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("name");
		session.removeAttribute("role");
		return SUCCESS;
	}
}
