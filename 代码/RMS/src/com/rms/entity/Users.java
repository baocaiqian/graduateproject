package com.rms.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

//用户表
@Entity
@Table(name="users")
public class Users {
	private int id;
	private String name;//用户名
	private String password;//密码
	private String icon;//头像
	private String email;
	private String school;
	private String major;
	private String describe;
	private String mainmajor;
	private List<Down> downlog;//下载记录
	private List<Upload> uploadlog;//上传记录
	private List<Collect> collectlog;//收藏记录
	private List<Browse> browselog;//浏览记录
	private List<Resource> resource;//资源列表
	private List<Group> groups;//所创建小组列表
	private List<Groupfile> groupfiles;//在组内上传记录
	private List<ClassSystem> classsystem;//课程体系
	//private List<Course> course;//课程
	private List<Search> sesrchlog;//搜索记录
	private List<Groupmember> groupmemberlog;//所在小组
	@Id
	@GeneratedValue(generator = "assigned")//表示主键自动生成
	@GenericGenerator(name="assigned", strategy = "assigned")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getMainmajor() {
		return mainmajor;
	}
	public void setMainmajor(String mainmajor) {
		this.mainmajor = mainmajor;
	}
	@OneToMany(mappedBy="downuser", targetEntity=Down.class, 
	        cascade=CascadeType.ALL)
	public List<Down> getDownlog() {
		return downlog;
	}
	public void setDownlog(List<Down> downlog) {
		this.downlog = downlog;
	}
	@OneToMany(mappedBy="owner", targetEntity=Upload.class, 
	        cascade=CascadeType.ALL)
	public List<Upload> getUploadlog() {
		return uploadlog;
	}
	public void setUploadlog(List<Upload> uploadlog) {
		this.uploadlog = uploadlog;
	}
	@OneToMany(mappedBy="collecter", targetEntity=Collect.class, 
	        cascade=CascadeType.ALL)
	public List<Collect> getCollectlog() {
		return collectlog;
	}
	public void setCollectlog(List<Collect> collectlog) {
		this.collectlog = collectlog;
	}
	@OneToMany(mappedBy="looker", targetEntity=Browse.class, 
	        cascade=CascadeType.ALL)
	public List<Browse> getBrowselog() {
		return browselog;
	}
	public void setBrowselog(List<Browse> browselog) {
		this.browselog = browselog;
	}
	@OneToMany(mappedBy="owner", targetEntity=Resource.class, 
	        cascade=CascadeType.ALL)
	public List<Resource> getResource() {
		return resource;
	}
	public void setResource(List<Resource> resource) {
		this.resource = resource;
	}
	@OneToMany(mappedBy="owner", targetEntity=Group.class, 
	        cascade=CascadeType.ALL)
	public List<Group> getGroups() {
		return groups;
	}
	public void setGroups(List<Group> groups) {
		this.groups = groups;
	}
	@OneToMany(mappedBy="uplorder", targetEntity=Groupfile.class, 
	        cascade=CascadeType.ALL)
	public List<Groupfile> getGroupfiles() {
		return groupfiles;
	}
	public void setGroupfiles(List<Groupfile> groupfiles) {
		this.groupfiles = groupfiles;
	}
	@OneToMany(mappedBy="owner", targetEntity=ClassSystem.class, 
	        cascade=CascadeType.ALL)
	public List<ClassSystem> getClasssystem() {
		return classsystem;
	}
	public void setClasssystem(List<ClassSystem> classsystem) {
		this.classsystem = classsystem;
	}
	/*
	@OneToMany(mappedBy="teacher", targetEntity=Course.class, 
	        cascade=CascadeType.ALL)
	public List<Course> getCourse() {
		return course;
	}
	public void setCourse(List<Course> course) {
		this.course = course;
	}
	*/
	@OneToMany(mappedBy="searcher", targetEntity=Search.class, 
	        cascade=CascadeType.ALL)
	public List<Search> getSesrchlog() {
		return sesrchlog;
	}
	public void setSesrchlog(List<Search> sesrchlog) {
		this.sesrchlog = sesrchlog;
	}
	@OneToMany(mappedBy="member", targetEntity=Groupmember.class, 
	        cascade=CascadeType.ALL)
	public List<Groupmember> getGroupmemberlog() {
		return groupmemberlog;
	}
	public void setGroupmemberlog(List<Groupmember> groupmemberlog) {
		this.groupmemberlog = groupmemberlog;
	}
	
}
