package com.rms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GenericGenerator;

//浏览记录
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="browse")
public class Browse {
	private int id;
	private String time;//浏览时间
	private Users looker;//浏览者
	private Resources resource;//资源id
	private double last;//持续时间
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
	@JoinColumn(name="looker")
	public Users getLooker() {
		return looker;
	}
	public void setLooker(Users looker) {
		this.looker = looker;
	}
	@ManyToOne
	@JoinColumn(name="resource")
	public Resources getResource() {
		return resource;
	}
	public void setResource(Resources resource) {
		this.resource = resource;
	}
	public double getLast() {
		return last;
	}
	public void setLast(double last) {
		this.last = last;
	}
	
}
