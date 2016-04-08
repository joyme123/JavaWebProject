package com.ssh.filters;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AdminAuthenticationFilter extends AbstractInterceptor {
	private static final long serialVersionUID = 3398879146611769334L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println("管理员身份验证启动......");
		if (session == null || session.getAttribute("name") == null || session.getAttribute("role") == null) {
			return "toindex";
		}
		if (!session.getAttribute("role").equals("admin")) {
			session.removeAttribute("name");
			session.removeAttribute("role");
			return "toindex";
		}
		return invocation.invoke();
	}

}
