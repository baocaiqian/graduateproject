package com.rms.browse.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Users;

@Repository
public class BrowseDao {
	@Resource
	private SessionFactory sf;
	//获取浏览过的资源ID
	//目前还不知道是什么类型，是String还是integer
public List<Integer> getBrowsedlog(Users u){
	Session session = sf.getCurrentSession();
	Query q = session.createQuery("select resource from Browse where looker = "+u.getId());
	return q.list();
	}
}
