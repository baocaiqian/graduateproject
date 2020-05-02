package com.rms.entity;

import org.springframework.web.multipart.MultipartFile;

public class Upform {
	private String classsystem;//课程体系
	private String course;//课程
	private String ifopen;//是否公开
	private MultipartFile[] files;
	public String getClasssystem() {
		return classsystem;
	}
	public void setClasssystem(String classsystem) {
		this.classsystem = classsystem;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	public String getIfopen() {
		return ifopen;
	}
	public void setIfopen(String ifopen) {
		this.ifopen = ifopen;
	}
	public MultipartFile[] getFiles() {
		return files;
	}
	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}
}
