package com.test;

public class Student {
	private int id;
	private String name;
	private int age;
	public void setId(int id){
		this.id=id;
	}
	public void setName(String name){
		this.name=name;
	}
	public void setAge(int age){
		this.age=age;
	}
	public int getId(){
		return this.id;
	}
	public String getName(){
		return this.name;
	}
	public int getAge(){
		return this.age;
	}
}
