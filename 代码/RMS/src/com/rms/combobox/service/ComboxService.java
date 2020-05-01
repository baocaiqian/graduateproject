package com.rms.combobox.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.combobox.Dao.ComboxDao;

@Service
@Transactional(readOnly=false)
public class ComboxService {
	@Resource
	private ComboxDao cd;
	public List<String> getallcs(int userid){
		return cd.getallcs(userid);
	}
	public List<String> getallcource(int userid){
		return cd.getallcource(userid);
	}
	/*
	public List<String> getAllgroup(int userid){
		return cd.getallgroup(userid);
	}
	*/
}
