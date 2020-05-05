package com.rms.recommend;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

import java.util.HashSet;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import java.util.Map.Entry;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Browse;
import com.rms.entity.Collect;
import com.rms.entity.Down;
import com.rms.entity.RecommendResource;
import com.rms.entity.Users;

import java.util.Scanner;

import java.util.Set;

 

/**

 * 基于用户的协同过滤推荐算法实现

A a b d

B a c

C b e

D c d e

 * @author Administrator

 *

 */
@Repository
public class CollaborativeFiltering {
	
	@Resource
	private SessionFactory sf;
	public List<RecommendResource> getRecommendResources(Users u) {

		/**

		 * 输入用户-->物品条目  一个用户对应多个物品

		 * 用户ID	物品ID集合

		 *   A		a b d

		 *   B		a c

		 *   C		b e

		 *   D		c d e

		 */
		List<Users> alluser = getallUser();
		int N = alluser.size();
		int[][] sparseMatrix = new int[N][N];//建立用户稀疏矩阵，用于用户相似度计算【相似度矩阵】

		Map<String, Integer> userItemLength = new HashMap<>();//存储每一个用户对应的不同物品总数  eg: A 3
		
		Map<String, Set<String>> itemUserCollection = new HashMap<>();//建立物品到用户的倒排表 eg: a A B

		Set<String> items = new HashSet<>();//辅助存储物品集合

		Map<String, Integer> userID = new HashMap<>();//辅助存储每一个用户的用户ID映射
		Map<Integer, String> idUser = new HashMap<>();//辅助存储每一个ID对应的用户映射
		/*获取集合*/
		//获取每个用户的倒排表
		
		for(int i = 0; i < alluser.size() ; i++){//依次处理N个用户 输入数据  以空格间隔
			String[] user_item = getinterestedresource(alluser.get(i)).split(" ");
			int length = user_item.length;

			userItemLength.put(user_item[0], length-1);//eg: A 3

			userID.put(user_item[0], i);//用户ID与稀疏矩阵建立对应关系

			idUser.put(i, user_item[0]);

			//建立物品--用户倒排表

			for(int j = 1; j < length; j ++){

				if(items.contains(user_item[j])){//如果已经包含对应的物品--用户映射，直接添加对应的用户

					itemUserCollection.get(user_item[j]).add(user_item[0]);

				}else{//否则创建对应物品--用户集合映射

					items.add(user_item[j]);

					itemUserCollection.put(user_item[j], new HashSet<String>());//创建物品--用户倒排关系

					itemUserCollection.get(user_item[j]).add(user_item[0]);

				}

			}

		}

		//计算相似度矩阵【稀疏】

		Set<Entry<String, Set<String>>> entrySet = itemUserCollection.entrySet();

		Iterator<Entry<String, Set<String>>> iterator = entrySet.iterator();

		while(iterator.hasNext()){

			Set<String> commonUsers = iterator.next().getValue();

			for (String user_u : commonUsers) {

				for (String user_v : commonUsers) {

					if(user_u.equals(user_v)){

						continue;

					}

					sparseMatrix[userID.get(user_u)][userID.get(user_v)] += 1;//计算用户u与用户v都有正反馈的物品总数

				}

			}

		}

		//System.out.println(userID.get(u.getId()+""));

		//计算用户之间的相似度【余弦相似性】
		if(userID.containsKey(u.getId()+"")){
		int recommendUserId = userID.get(u.getId()+"");
		
		for (int j = 0;j < sparseMatrix.length; j++) {

				if(j != recommendUserId){

					System.out.println(idUser.get(recommendUserId)+"--"+idUser.get(j)+"相似度:"+sparseMatrix[recommendUserId][j]/Math.sqrt(userItemLength.get(idUser.get(recommendUserId))*userItemLength.get(idUser.get(j))));

				}

		}

		

		//计算指定用户recommendUser的物品推荐度
		List<RecommendResource> recommendresource = new ArrayList<RecommendResource>();
		for(String item: items){//遍历每一件物品

			Set<String> users = itemUserCollection.get(item);//得到购买当前物品的所有用户集合

			if(!users.contains(u.getId()+"")){//如果被推荐用户没有购买当前物品，则进行推荐度计算

				double itemRecommendDegree = 0.0;

				for(String user: users){

					itemRecommendDegree += sparseMatrix[userID.get(u.getId()+"")][userID.get(user)]/Math.sqrt(userItemLength.get(u.getId()+"")*userItemLength.get(user));//推荐度计算

				}
				RecommendResource rr  = new RecommendResource();
				rr.setName(item);rr.setRate(itemRecommendDegree);
				recommendresource.add(rr);
				//System.out.println("The item "+item+" for "+u.getId() +"'s recommended degree:"+itemRecommendDegree);

			}

		}
		for(int i = 0;i<recommendresource.size()-1;i++) {
			for(int j =0;j<recommendresource.size()-i-1;j++) {
				if(recommendresource.get(j+1).getRate()>recommendresource.get(j).getRate()) {
					/*
					System.out.println(recommendresource.get(j).getName()+":"+recommendresource.get(j).getRate());
					System.out.println(recommendresource.get(j).getName()+":"+recommendresource.get(j).getRate());
					*/
					Double t = recommendresource.get(j+1).getRate();
					String id = recommendresource.get(j+1).getName();
					recommendresource.get(j+1).setRate(recommendresource.get(j).getRate());
					recommendresource.get(j+1).setName(recommendresource.get(j).getName());
					recommendresource.get(j).setRate(t);
					recommendresource.get(j).setName(id);
					/*
					System.out.println(recommendresource.get(j).getName()+":"+recommendresource.get(j).getRate());
					System.out.println(recommendresource.get(j).getName()+":"+recommendresource.get(j).getRate());
					*/
				}
			}
		}
			return recommendresource;
		}
		return null;
	}
	public List<Users> getallUser(){
		Session session = sf.getCurrentSession();
		List<Users> browseuser = session.createQuery("select distinct looker from Browse").list();
		List<Users> Downuser = session.createQuery("select distinct downuser from  Down").list();
		List<Users> Collectuser = session.createQuery("select distinct collecter from  Collect").list();
		browseuser.addAll(Downuser);
		browseuser.addAll(Collectuser);
		return browseuser;
	}
	public String getinterestedresource(Users u){
		Session session = sf.getCurrentSession();
		Set<String> resources = new HashSet<String>();
		List<Browse> mybowse = session.createQuery("from Browse where looker = "+u.getId()).list();
		for(int i=0;i<mybowse.size();i++) {
			resources.add(mybowse.get(i).getResource().getName());
		}
		List<Down> mydown = session.createQuery("from Down where downuser = "+u.getId()).list();
		for(int i=0;i<mydown.size();i++) {
			resources.add(mydown.get(i).getResource().getName());
		}
		List<Collect> myCollect = session.createQuery("from Collect where collecter = "+u.getId()).list();
		for(int i=0;i<myCollect.size();i++) {
			resources.add(myCollect.get(i).getResource().getName());
		}
		String user_item = ""+u.getId()+" ";
		List<String> resource = new ArrayList<String>(resources);
		for(int i=0;i<resource.size();i++) {
			if(i!=(resource.size()-1)) {
				user_item=user_item+resource.get(i)+" ";
			}
			else {
				user_item=user_item+resource.get(i);
			}
		}
		return user_item;
	}
}
