package com.rms.fileoperate.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.Resources;
import com.rms.entity.Users;
import com.rms.fileoperate.dao.FileopDao;

@Service
@Transactional(readOnly=false)
public class FileopService {
	
	@Resource 
	private FileopDao fdo;
	
	public List<Resources> getAllTypeFilefir(String type,int courseid,int owner){
		return fdo.getAllTypeFile(type,courseid,owner);
	}
	
	public List<Resources> getAllSearchFilefir(String type,int courseid,int owner,String keyword){
		return fdo.getSearchTypeFile(type,courseid,owner,keyword);
	}
	
	public void deleteFilefir(int resid,String path) {
		fdo.deleteFile(resid,path);
	}
	
	public void insertDownfir(int resourcesid,Users user) {
		fdo.insertDown(resourcesid,user);
	}
	public void insertCollectfir(int resourceid,Users user) {
		fdo.insertCollect(resourceid,user);
	}
	
	public void insertBrowsefer(int resourceid,Users user) {
		fdo.insertBrowse(resourceid,user);
	}
	
	
	

}
