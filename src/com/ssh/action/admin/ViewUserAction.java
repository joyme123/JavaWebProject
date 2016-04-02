package com.ssh.action.admin;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.User;
import com.ssh.service.UserService;

public class ViewUserAction extends ActionSupport {
	private static final long serialVersionUID = 7779674248322681566L;
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public String execute() {
		Map request = (Map) ActionContext.getContext().get("request");
		ArrayList<User> userList = this.userService.getUserList();
		request.put("userList", userList);
		return SUCCESS;
	}
}
