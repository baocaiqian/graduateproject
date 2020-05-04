package com.rms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


//下载
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="down")
public class Down {
	private int id;
	private String time;//下载时间
	private Resources resource;//资源id
	private Users downuser;//下载人id
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
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
	@ManyToOne
	@JoinColumn(name="resource")
	public Resources getResource() {
		return resource;
	}
	public void setResource(Resources resource) {
		this.resource = resource;
	}
	@ManyToOne
	@JoinColumn(name="downuser")
	public Users getDownuser() {
		return downuser;
	}
	public void setDownuser(Users downuser) {
		this.downuser = downuser;
	}
	
	
	
}
