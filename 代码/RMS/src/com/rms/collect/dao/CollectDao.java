package com.rms.collect.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Users;

@Repository
public class CollectDao {
	@Resource
	private SessionFactory sf;
	//获取当前用户收集的所有资源
	public List<Integer> getCollectlog(Users u){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("select resource from Collect where collecter = "+u.getId());
		return q.list();
		}
}
