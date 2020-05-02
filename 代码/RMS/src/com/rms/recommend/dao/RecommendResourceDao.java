package com.rms.recommend.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class RecommendResourceDao {
	@Resource
	private SessionFactory sf;
	public List<Integer> getInterestedResource() {
		
		return null;
	}
}
