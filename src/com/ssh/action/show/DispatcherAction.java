package com.ssh.action.show;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DispatcherAction extends ActionSupport {
	public String goIndex() {
		return "index";
	}

	public String goAdminLogin() {
		return "adminLogin";
	}

	public String goAddCarModel() {
		return "addCarModel";
	}

	public String goViewCarModel() {
		return "viewCarModel";
	}

	public String goAddUser() {
		return "addUser";
	}

	public String goViewUser() {
		return "viewUser";
	}
}
