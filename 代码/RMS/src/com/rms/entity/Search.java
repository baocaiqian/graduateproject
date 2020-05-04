package com.rms.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


//查找表，记录搜索记录
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="search")
public class Search {
	private int id;
	private Users searcher;//查找者
	private String title;//标题
	private String course;//课程
	private String type;//类型
	private String time;//查找时间
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="searcher")
	public Users getSearcher() {
		return searcher;
	}
	public void setSearcher(Users searcher) {
		this.searcher = searcher;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
