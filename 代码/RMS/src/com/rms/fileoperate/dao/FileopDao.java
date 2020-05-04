package com.rms.fileoperate.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Resources;

@Repository
public class FileopDao {
	
	@Resource
	private SessionFactory sf;
	
	//根据条件：用户名+课程名+文件类型获得查询出这些文件
	public List<Resources> getAllTypeFile(String type,int courseid,int owner){
		Session session = this.sf.getCurrentSession();
//		Query q=session.createQuery("from Resources where type=?0 and course=?1 and owner=?2");
//		q.setParameter(0, type);
//		q.setParameter(1, courseid);
//		q.setParameter(2, owner);
		Query q=session.createQuery("from Resources where type='"+type+"'and course="+courseid+"and owner="+owner);
		
		System.out.println(type+courseid+owner+"-------------------");
		System.out.println("哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或"+q.list());
		
		return q.list();	
	}

}
