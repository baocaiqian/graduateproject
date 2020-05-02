package com.rms.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

//课程体系
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="classsystem")
public class ClassSystem {
	private int systemId;
	private String name;//体系名称
	private Users owner;//用户id
	private String systemdescribe;//描述
	private List<Course> courses;
	@Id
	@GeneratedValue(generator = "assigned")//表示主键自动生成
	@GenericGenerator(name="assigned", strategy = "assigned")
	public int getSystemId() {
		return systemId;
	}
	public void setSystemId(int systemId) {
		this.systemId = systemId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToOne  //如果把此处的(cascade =CascadeType.ALL)去掉
	@JoinColumn(name="owner")
	public Users getOwner() {
		return owner;
	}
	public void setOwner(Users owner) {
		this.owner = owner;
	}
	public String getSystemdescribe() {
		return systemdescribe;
	}
	public void setSystemdescribe(String systemdescribe) {
		this.systemdescribe = systemdescribe;
	}
	@OneToMany(mappedBy="system", targetEntity=Course.class, 
	        cascade=CascadeType.ALL)
	public List<Course> getCourses() {
		return courses;
	}
	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
}
