package com.rms.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

//课程表
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="course")
public class Course {
	private int id;
	private String name;//课程名称
	private String classes;//班级
	private ClassSystem system;//所属课程体系的id
	private Users teacher;//用户id
	private String icon;//头像
	private String term;//学期
	private List<Resource> resources;
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
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	@ManyToOne
	@JoinColumn(name="system")
	public ClassSystem getSystem() {
		return system;
	}
	public void setSystem(ClassSystem system) {
		system = system;
	}
	@ManyToOne
	@JoinColumn(name="teacher")
	public Users getTeacher() {
		return teacher;
	}
	public void setTeacher(Users teacher) {
		this.teacher = teacher;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	@OneToMany(mappedBy="course", targetEntity=Resource.class, 
	        cascade=CascadeType.ALL)
	public List<Resource> getResources() {
		return resources;
	}
	public void setResources(List<Resource> resources) {
		this.resources = resources;
	}
	
}
