package com.ssh.action.admin;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.Action;
import com.ssh.domain.User;
import com.ssh.service.UserService;

public class GetUserByIdAction implements Action {
	private int id;
	private InputStream inputStream;
	private UserService userService;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public InputStream getResult() {
		return this.inputStream;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public String execute() throws Exception {
		User user = userService.getUserById(id);
		if (user == null)
			inputStream = new ByteArrayInputStream("null".getBytes("UTF-8"));
		else
			inputStream = new ByteArrayInputStream(user.getName().getBytes("UTF-8"));
		return SUCCESS;
	}

}
