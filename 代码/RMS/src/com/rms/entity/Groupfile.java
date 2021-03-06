package com.rms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


//组内文件
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="groupfile")
public class Groupfile {
	private int id;
	private Resources resource;//资源id
	private String uptime;//上传时间
	private int downstimes;//下载次数
	private Users uplorder;//上传人id
	private Groups groups;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="resource")
	public Resources getResource() {
		return resource;
	}
	public void setResource(Resources resource) {
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
	@ManyToOne
	@JoinColumn(name="uplorder")
	public Users getUplorder() {
		return uplorder;
	}
	public void setUplorder(Users uplorder) {
		this.uplorder = uplorder;
	}
	@ManyToOne
	@JoinColumn(name="groups")
	public Groups getGroups() {
		return groups;
	}
	public void setGroups(Groups groups) {
		this.groups = groups;
	}
	
	
}
