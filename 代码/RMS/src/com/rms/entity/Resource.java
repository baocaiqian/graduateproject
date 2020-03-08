package com.rms.entity;
//资源
public class Resource {
	int id;
	String type;//资源类型
	String name;//资源名字
	int course;//对应课程id
	int classsystem;//所属课程体系id
	String tag;//资源标签
	int owner;//所属人的id；
	int authority;//权限
	String size;//文件大小
	String time;//资源上传时间
	int downtimes;//下载次数
	int looktimes;//浏览次数
	String postfix;//后缀名
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCourse() {
		return course;
	}
	public void setCourse(int course) {
		this.course = course;
	}
	public int getClasssystem() {
		return classsystem;
	}
	public void setClasssystem(int classsystem) {
		this.classsystem = classsystem;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getOwner() {
		return owner;
	}
	public void setOwner(int owner) {
		this.owner = owner;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getDowntimes() {
		return downtimes;
	}
	public void setDowntimes(int downtimes) {
		this.downtimes = downtimes;
	}
	public int getLooktimes() {
		return looktimes;
	}
	public void setLooktimes(int looktimes) {
		this.looktimes = looktimes;
	}
	public String getPostfix() {
		return postfix;
	}
	public void setPostfix(String postfix) {
		this.postfix = postfix;
	}
}
