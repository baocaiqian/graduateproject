package com.rms.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


//收藏表
@Entity
@Table(name="collect")
public class Collect {
	private int id;//主键
	private Users collecter;//收藏者
	private Resources resource;//资源
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="collecter")
	public Users getCollecter() {
		return collecter;
	}
	public void setCollecter(Users collecter) {
		this.collecter = collecter;
	}
	@ManyToOne
	@JoinColumn(name="resource")
	public Resources getResource() {
		return resource;
	}
	public void setResource(Resources resource) {
		this.resource = resource;
	}
	
}
