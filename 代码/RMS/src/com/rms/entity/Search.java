package com.rms.entity;
//查找表，记录搜索记录
public class Search {
	int id;
	int Searcher;//查找者
	String arbitrary;//任意词
	String title;//标题
	String course;//课程
	String type;//类型
	String time;//查找时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSearcher() {
		return Searcher;
	}
	public void setSearcher(int searcher) {
		Searcher = searcher;
	}
	public String getArbitrary() {
		return arbitrary;
	}
	public void setArbitrary(String arbitrary) {
		this.arbitrary = arbitrary;
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
