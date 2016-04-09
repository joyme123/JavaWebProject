package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.service.UserService;

public class DeleteUserAction extends ActionSupport {
	private static final long serialVersionUID = 5424164982197784783L;
	private int id;
	private UserService userService;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public String execute() {
		this.userService.deleteUserById(id);
		return SUCCESS;
	}
}
