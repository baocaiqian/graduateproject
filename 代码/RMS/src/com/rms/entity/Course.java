package com.rms.entity;
//课程表
public class Course {
	int id;
	String name;//课程名称
	String classes;//班级
	int System;//所属课程体系的id
	int teacher;//用户id
	String icon;//头像
	String term;//学期
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public int getSystem() {
		return System;
	}
	public void setSystem(int system) {
		System = system;
	}
	public int getTeacher() {
		return teacher;
	}
	public void setTeacher(int teacher) {
		this.teacher = teacher;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	
}
