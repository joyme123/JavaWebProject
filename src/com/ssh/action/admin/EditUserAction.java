package com.ssh.action.admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.User;
import com.ssh.service.UserService;

public class EditUserAction extends ActionSupport {
	private static final long serialVersionUID = 6510298525790687896L;
	private User user;
	private UserService userService;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public String execute() {
		this.userService.editUser(user);
		return SUCCESS;
	}
}
