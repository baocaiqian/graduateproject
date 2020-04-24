package com.rms.recommend.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rm.until.Repetitive;
import com.rms.entity.ClassSystem;
import com.rms.entity.Course;
import com.rms.entity.Users;
import com.rms.user.dao.UserDao;

@Repository
public class RecomendCourseDao {
	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private UserDao ud;
	/*
	 * 课程推荐，目前暂未实现课程推荐率的算法。因为需要一个一个体系去比对。
	 * */
	public List<String> findcourse(Users u,ClassSystem system) {
		Session session = sessionFactory.getCurrentSession();
		//找到所有同系的老师
		List<Users> alluser = ud.findUsersByMajor(u);
		//获取同系老师id
		String userids="(";
		for(int i=0;i<alluser.size();i++) {
			if(i==alluser.size()-1) {
				userids=userids+alluser.get(i).getId()+")";
			}
			else {
				userids=userids+alluser.get(i).getId()+",";
			}
		}
		//在课程体系库中，找到属于当前用户同系老师并且名字与当前体系相同的体系。
		Query sys= session.createQuery("from ClassSystem where owner in "+userids+" and name ='"+system.getName()
				+"'");
		List<ClassSystem> systems = sys.list();
		if(!systems.isEmpty()) {
		//获取当前体系所包含课程名称
		String courses = "(";
		for(int i=0;i<system.getCourses().size();i++) {
			if(i==system.getCourses().size()-1) {
				courses = courses+"'"+system.getCourses().get(i).getName()+"')";
			}
			else {
				courses = courses+"'"+system.getCourses().get(i).getName()+"',";
			}
		}
		System.out.println("开始获取重复率");
		//获取各个课程重复率
		List<Repetitive> repetitiverate = new ArrayList<Repetitive>();
				for(ClassSystem cs : systems) {
					Query recourse= session.createQuery("from Course where system = "+cs.getSystemId()+" and name in "+courses);
					Repetitive temp = new Repetitive();
					temp.setSystemid(cs.getSystemId());
					if(!recourse.list().isEmpty()) {
						temp.setRate(recourse.list().size());
					}
					else {
						temp.setRate(0);
					}
					repetitiverate.add(temp);
				}
		//按照课程重复率排序(冒泡排序)
		for(int i = 0;i<repetitiverate.size()-1;i++) {
			for(int j =0;j<repetitiverate.size()-i-1;j++) {
				if(repetitiverate.get(j+1).getRate()>repetitiverate.get(i).getRate()) {
					int t = repetitiverate.get(j+1).getRate();
					int id = repetitiverate.get(j+1).getSystemid();
					repetitiverate.get(j+1).setRate(repetitiverate.get(j).getRate());
					repetitiverate.get(j+1).setSystemid(repetitiverate.get(j).getSystemid());
					repetitiverate.get(j).setRate(t);
					repetitiverate.get(j).setSystemid(id);
				}
			}
		}
		//获取体系id列表
			String systemids="(";
			for(int i=0;i<repetitiverate.size();i++) {
				if(i==repetitiverate.size()-1) {
					systemids=systemids+repetitiverate.get(i).getSystemid()+")";
				}
				else {
					systemids=systemids+repetitiverate.get(i).getSystemid()+",";
				}
			}		
		//得到推荐列表
		Query recommendcourse= session.createQuery("select DISTINCT name from Course where system in "+systemids+" and name not in "+courses);
		recommendcourse.setFirstResult(0);
		recommendcourse.setMaxResults(5);
		return recommendcourse.list();
		}
		return null;
	}
}
