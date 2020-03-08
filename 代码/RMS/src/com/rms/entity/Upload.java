package com.rms.entity;
//上传记录表
public class Upload {
	int id;
	int resorce;//资源id
	String time;//上传时间
	int owner;//上传的人的id
	String path;//上传路径
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getResorce() {
		return resorce;
	}
	public void setResorce(int resorce) {
		this.resorce = resorce;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getOwner() {
		return owner;
	}
	public void setOwner(int owner) {
		this.owner = owner;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
