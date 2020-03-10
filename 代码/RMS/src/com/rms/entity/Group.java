package com.rms.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

//小组
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="group")
public class Group {
	private int id;
	private String name;//组名
	private String icon;//小组头像
	private Users owner;//所属人id
	private String time;//创建时间
	private List<Groupmember> members;
	private List<Groupfile> files;
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
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	@ManyToOne
	@JoinColumn(name="owner")
	public Users getOwner() {
		return owner;
	}
	public void setOwner(Users owner) {
		this.owner = owner;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@OneToMany(mappedBy="group", targetEntity=Groupmember.class, 
	        cascade=CascadeType.ALL)
	public List<Groupmember> getMembers() {
		return members;
	}
	public void setMembers(List<Groupmember> members) {
		this.members = members;
	}
	@OneToMany(mappedBy="group", targetEntity=Groupfile.class, 
	        cascade=CascadeType.ALL)
	public List<Groupfile> getFiles() {
		return files;
	}
	public void setFiles(List<Groupfile> files) {
		this.files = files;
	}
	
}
