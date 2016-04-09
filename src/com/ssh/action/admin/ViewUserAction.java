package com.ssh.action.admin;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dao.QueryResult;
import com.ssh.service.UserService;

public class ViewUserAction extends ActionSupport {
	private static final long serialVersionUID = 7779674248322681566L;
	private UserService userService;
	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

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
		QueryResult queryResult = this.userService.getUserList(page);
		request.put("userList", queryResult.getResult());
		request.put("pageCount", queryResult.getPageCount());
		return SUCCESS;
	}
}
