package com.rms.entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

//上传记录表
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="upload")
public class Upload {
	private int id;
	private String time;//上传时间
	private Users owner;//上传的人的id
	private String path;//上传路径
	//private List<Resource> resources;
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
	@JoinColumn(name="owner")
	public Users getOwner() {
		return owner;
	}
	public void setOwner(Users owner) {
		this.owner = owner;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	/*
	@OneToMany(mappedBy="uploadlog", targetEntity=Resource.class, 
	        cascade=CascadeType.ALL)
	public List<Resource> getResources() {
		return resources;
	}
	public void setResources(List<Resource> resources) {
		this.resources = resources;
	}
	*/
}
