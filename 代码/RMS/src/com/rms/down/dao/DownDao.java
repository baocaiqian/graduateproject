package com.rms.down.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Users;

@Repository
public class DownDao {
	@Resource
	private SessionFactory sf;
	//获取下载过的资源ID
	//目前还不知道是什么类型，是String还是integer
public List<Integer> getBrowsedlog(Users u){
	Session session = sf.getCurrentSession();
	Query q = session.createQuery("select resource from Down where downuser = "+u.getId());
	return q.list();
	}
}
