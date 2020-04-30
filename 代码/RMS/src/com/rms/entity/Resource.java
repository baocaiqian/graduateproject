package com.rms.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import org.hibernate.annotations.GenericGenerator;

//资源
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="resource")
public class Resource {
	private int id;
	private String type;//资源类型
	private String name;//资源名字
	private Course course;//对应课程id
	private ClassSystem classsystem;//所属课程体系id
	private String tag;//资源标签
	private Users owner;//所属人的id；
	private int authority;//权限
	private String size;//文件大小
	private String time;//资源上传时间
	private int downtimes;//下载次数
	private int looktimes;//浏览次数
	private String postfix;//后缀名
	private List<Down> downlog;//下载记录
	//private Upload uploadlog;//所属上传记录
	private List<Collect> collectlog;//收藏记录
	private List<Browse> browselog;//浏览记录
	private List<Groupfile> groupfiles;//在组内上传记录
	@Id
	@GeneratedValue(generator = "assigned")//表示主键自动生成
	@GenericGenerator(name="assigned", strategy = "assigned")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToOne
	@JoinColumn(name="course")
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	@ManyToOne
	@JoinColumn(name="classsystem")
	public ClassSystem getClasssystem() {
		return classsystem;
	}
	public void setClasssystem(ClassSystem classsystem) {
		this.classsystem = classsystem;
	}
	@OneToMany(mappedBy="resource", targetEntity=Down.class, 
	        cascade=CascadeType.ALL)
	public List<Down> getDownlog() {
		return downlog;
	}
	public void setDownlog(List<Down> downlog) {
		this.downlog = downlog;
	}
	/*
	@ManyToOne
	@JoinColumn(name="uploadlog")
	public Upload getUploadlog() {
		return uploadlog;
	}
	public void setUploadlog(Upload uploadlog) {
		this.uploadlog = uploadlog;
	}
	*/
	@OneToMany(mappedBy="resource", targetEntity=Collect.class, 
	        cascade=CascadeType.ALL)
	public List<Collect> getCollectlog() {
		return collectlog;
	}
	public void setCollectlog(List<Collect> collectlog) {
		this.collectlog = collectlog;
	}
	@OneToMany(mappedBy="resource", targetEntity=Browse.class, 
	        cascade=CascadeType.ALL)
	public List<Browse> getBrowselog() {
		return browselog;
	}
	public void setBrowselog(List<Browse> browselog) {
		this.browselog = browselog;
	}
	@OneToMany(mappedBy="resource", targetEntity=Groupfile.class, 
	        cascade=CascadeType.ALL)
	public List<Groupfile> getGroupfiles() {
		return groupfiles;
	}
	public void setGroupfiles(List<Groupfile> groupfiles) {
		this.groupfiles = groupfiles;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	@ManyToOne
	@JoinColumn(name="owner")
	public Users getOwner() {
		return owner;
	}
	public void setOwner(Users owner) {
		this.owner = owner;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getDowntimes() {
		return downtimes;
	}
	public void setDowntimes(int downtimes) {
		this.downtimes = downtimes;
	}
	public int getLooktimes() {
		return looktimes;
	}
	public void setLooktimes(int looktimes) {
		this.looktimes = looktimes;
	}
	public String getPostfix() {
		return postfix;
	}
	public void setPostfix(String postfix) {
		this.postfix = postfix;
	}
}
