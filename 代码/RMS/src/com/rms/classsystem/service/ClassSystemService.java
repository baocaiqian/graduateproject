package com.rms.classsystem.service;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.classsystem.dao.ClassSystemDao;
import com.rms.entity.ClassSystem;
import com.rms.entity.Users;

@Service
@Transactional(readOnly=false)
public class ClassSystemService {
	@Resource
	private ClassSystemDao csd;
	public List<ClassSystem> getSystem(Users u) {
		return csd.getSystem(u);
	}
	public ClassSystem getSystemById(int id) {
		return csd.getSystemById(id);
	}
}
