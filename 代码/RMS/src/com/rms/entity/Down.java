package com.rms.entity;
//下载
public class Down {
	int id;
	int owner;//资源所属人id
	String time;//下载时间
	int resource;//资源id
	int downuser;//下载人id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOwner() {
		return owner;
	}
	public void setOwner(int owner) {
		this.owner = owner;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getResource() {
		return resource;
	}
	public void setResource(int resource) {
		this.resource = resource;
	}
	public int getDownuser() {
		return downuser;
	}
	public void setDownuser(int downuser) {
		this.downuser = downuser;
	}
	
}
