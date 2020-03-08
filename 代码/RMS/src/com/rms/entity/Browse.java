package com.rms.entity;
//浏览记录
public class Browse {
	int id;
	String time;//浏览时间
	int looker;//浏览者
	int resource;//资源id
	double last;//持续时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getLooker() {
		return looker;
	}
	public void setLooker(int looker) {
		this.looker = looker;
	}
	public int getResource() {
		return resource;
	}
	public void setResource(int resource) {
		this.resource = resource;
	}
	public double getLast() {
		return last;
	}
	public void setLast(double last) {
		this.last = last;
	}
	
}
