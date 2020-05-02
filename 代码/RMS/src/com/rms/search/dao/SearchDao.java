package com.rms.search.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDao {
	@Resource
	private SessionFactory sf;
	//获取热门搜索词汇
	public List<String> getHotSearch() {
		Session session = sf.getCurrentSession();
		String sql="select new List(s.title,count(*)) form Search s group by s.title";
		List list = session.createQuery(sql).list();
		
		return null;
	}
}
