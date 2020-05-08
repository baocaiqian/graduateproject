package com.rms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

//小组成员
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="groupmember")
public class Groupmember {
	private int id;
	private Users member;//小组成员id
	private Groups groups;//小组id
	private String mail;//邮件
	private String time;//入组时间
	private String role;//组内角色
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="member")
	public Users getMember() {
		return member;
	}
	public void setMember(Users member) {
		this.member = member;
	}
	@ManyToOne
	@JoinColumn(name="groups")
	public Groups getGroups() {
		return groups;
	}
	public void setGroups(Groups groups) {
		this.groups = groups;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}
