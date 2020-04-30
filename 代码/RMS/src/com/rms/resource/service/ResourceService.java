package com.rms.resource.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.rms.entity.Users;
import com.rms.resource.dao.ResourceDao;

@Service
@Transactional(readOnly=false)
public class ResourceService {
	@Resource
	private ResourceDao rd;
	public List<Resource> getmyresource(Users u) {
		return rd.getallResource(u);
	}
}
