package com.rms.recommend.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class RecommendResourceDao {
	@Resource
	private SessionFactory sf;
	
}
