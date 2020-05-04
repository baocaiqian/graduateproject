package com.rms.resource.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.Resources;
import com.rms.entity.Search;
import com.rms.entity.Users;
import com.rms.resource.dao.ResourceDao;

@Service
@Transactional(readOnly=false)
public class ResourceService {
	@Resource
	private ResourceDao rd;
	public List<Resources> getmyresource(Users u) {
		return rd.getallResource(u);
	}
	//数据库检索
	public List<Resources> getallsearchResource(Search rc,Users u){
		return rd.getallsearchResource(rc, u);
	}
	//个人资源库检索
	public List<Resources> getsearchResource(Search rc,Users u){
		return rd.getsearchResource(rc, u);
	}
	public List<Resources> getsearchResourcebyhot(Search rc,Users u){
		return rd.getsearchResourcebyhot(rc, u);
	}
	public List<String> findhotdown(){
		return rd.gethotdown();
	}
	public List<Resources> getsharer(){
		return rd.getshareresource();
	}
}
