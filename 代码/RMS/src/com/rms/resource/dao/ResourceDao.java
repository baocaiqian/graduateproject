package com.rms.resource.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Resources;
import com.rms.entity.Users;

@Repository
public class ResourceDao {
	@Resource
	private SessionFactory sf;
	//获取当前用户所有资源
	public List<Resources> getallResource(Users u){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources where owner = "+u.getId());
		return q.list();
	}
	
}
