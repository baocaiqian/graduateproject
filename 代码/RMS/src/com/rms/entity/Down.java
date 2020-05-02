package com.rms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GenericGenerator;

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
	@GeneratedValue(generator = "assigned")//表示主键自动生成
	@GenericGenerator(name="assigned", strategy = "assigned")
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
