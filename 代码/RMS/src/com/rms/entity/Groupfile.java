package com.rms.entity;
//组内文件
public class Groupfile {
	int id;
	int resource;//资源id
	String uptime;//上传时间
	int downstimes;//下载次数
	int uplorder;//上传人id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getResource() {
		return resource;
	}
	public void setResource(int resource) {
		this.resource = resource;
	}
	public String getUptime() {
		return uptime;
	}
	public void setUptime(String uptime) {
		this.uptime = uptime;
	}
	public int getDownstimes() {
		return downstimes;
	}
	public void setDownstimes(int downstimes) {
		this.downstimes = downstimes;
	}
	public int getUplorder() {
		return uplorder;
	}
	public void setUplorder(int uplorder) {
		this.uplorder = uplorder;
	}
	
}
