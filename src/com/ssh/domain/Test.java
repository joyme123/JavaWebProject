package com.ssh.domain;

import java.io.Serializable;

public class Test implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String testname;
	private String testpass;

	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Test(Integer id, String name, String pass) {
		super();
		this.id = id;
		this.testname = name;
		this.testpass = pass;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTestname() {
		return testname;
	}

	public void setTestname(String name) {
		this.testname = name;
	}

	public String getTestpass() {
		return testpass;
	}

	public void setTestpass(String pass) {
		this.testpass = pass;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + testname + ", pass=" + testpass + "]";
	}
}