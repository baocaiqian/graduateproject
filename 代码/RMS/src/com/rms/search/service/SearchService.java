package com.rms.search.service;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.HotResearch;
import com.rms.search.dao.SearchDao;

@Service
@Transactional(readOnly=false)
public class SearchService {
	@Resource
	private SearchDao sd;
	public List<HotResearch> getHotSearch() {
		return sd.getHotSearch();
	}
}
