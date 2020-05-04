package com.rms.search.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.rms.entity.HotResearch;

@Repository
public class SearchDao {
	@Resource
	private SessionFactory sf;
	//获取热门搜索词汇
	public List<HotResearch> getHotSearch() {
		List<HotResearch> hotresearch = new ArrayList<HotResearch>();
		/*
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("select s.title as title,count(s.title) as count from Search s Group by s.title");
		List<HostResearch> r=q.list();
		System.out.println(list.get(0));
		*/
		Session session = sf.getCurrentSession();
		Iterator it = session.createQuery("select s.title,count(s.title) from Search s Group by s.title").iterate();
		while(it.hasNext())
		{
			HotResearch hr = new HotResearch();
			Object[] oc = (Object[])it.next();
			if((String)oc[0]!="") {//那个不是"",目前不知道是啥
				hr.setTitle((String)oc[0]);
				hr.setCount((Long)oc[1]);
				hotresearch.add(hr);
			}
		}
		return sortList(hotresearch);
	}
	public List<HotResearch> sortList(List<HotResearch> hotresearch) {
		List<HotResearch> result = hotresearch;
		/*
		System.out.println(result.get(0).getCount()+";"+result.get(1).getCount());
		System.out.println("开始排序");
		//不顶事儿
		System.out.println("当前hotrsearch的size："+result.size());
		*/
		for(int i = 0;i<result.size()-1;i++) {
			for(int j =0;j<result.size()-i-1;j++) {
				if(result.get(j+1).getCount()>result.get(j).getCount()) {
					/*
					System.out.println(j+":"+result.get(j).getCount()+":"+result.get(j).getTitle());
					System.out.println((j+1)+":"+result.get(j+1).getCount()+":"+result.get(j+1).getTitle());
					*/
					long t = result.get(j+1).getCount();
					String id = result.get(j+1).getTitle();
					result.get(j+1).setCount(result.get(j).getCount());
					result.get(j+1).setTitle(result.get(j).getTitle());
					result.get(j).setCount(t);
					result.get(j).setTitle(id);
					/*
					System.out.println(j+":"+result.get(j).getCount()+":"+result.get(j).getTitle());
					System.out.println((j+1)+":"+result.get(j+1).getCount()+":"+result.get(j+1).getTitle());
					System.out.println("正在交换");
					*/
				}
			}
		}
		//System.out.println(result.get(0).getCount()+";"+result.get(1).getCount());
		return result;
	}
}
