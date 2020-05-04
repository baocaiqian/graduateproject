package com.rms.fileoperate.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.Resources;
import com.rms.fileoperate.dao.FileopDao;

@Service
@Transactional(readOnly=false)
public class FileopService {
	
	@Resource 
	private FileopDao fdo;
	
	public List<Resources> getAllTypeFilefir(String type,int courseid,int owner){
		return fdo.getAllTypeFile(type,courseid,owner);
	}

}
