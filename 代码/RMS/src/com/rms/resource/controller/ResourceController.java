package com.rms.resource.controller;

import java.text.ParseException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rms.course.service.CourseService;
import com.rms.entity.HotResearch;
import com.rms.entity.Resources;
import com.rms.entity.Search;
import com.rms.entity.Users;
import com.rms.resource.service.ResourceService;
import com.rms.search.service.SearchService;

@Controller
public class ResourceController {
	@Resource
	private CourseService cs;
	@Resource
	private ResourceService rs;
	@Resource
	private SearchService ss;
	//进入资源检索页面，获取课程名称们
	@RequestMapping(value="/research",method=RequestMethod.GET)
	public String getallCourse(HttpSession session,HttpServletRequest request) throws ParseException {
		List<String> coursenames = cs.getallcoursename();
		request.setAttribute("names", coursenames);
		Users u = (Users)session.getAttribute("user");
		List<HotResearch> hotresearch = ss.getHotSearch();
		List<String> intrestedsearch = rs.getApriori(u);
		if(intrestedsearch.isEmpty()) {
			for(int i=0;i<hotresearch.size();i++) {
				intrestedsearch.add(hotresearch.get(i).getTitle());
			}
		}
		List<String> hotdown = rs.findhotdown();
		
		if(hotresearch.size()<=6) {
			request.setAttribute("hotresearch", hotresearch);
			request.setAttribute("intrestedsearch",intrestedsearch);
		}else
		{
			request.setAttribute("hotresearch", hotresearch.subList(0,6));
			request.setAttribute("intrestedsearch",intrestedsearch.subList(0, 6));
		}
		
		request.setAttribute("hotdown", hotdown);
		return "research";
	}
	@RequestMapping(value="/myresourceresearch",method=RequestMethod.GET)
	public String getmyresource(HttpSession session,HttpServletRequest request) {
		Users u = (Users)session.getAttribute("user");
		List<Resources> resources = rs.getmyresource(u);
		List<String> coursenames = cs.getmycoursename(u);
		request.setAttribute("names", coursenames);
		request.setAttribute("resources",resources);
		return "myresourceresearch";
	}
	//我的资源库检索
	@RequestMapping(value="/mysearched",method=RequestMethod.POST)
	public String getSearchresource(HttpSession session,HttpServletRequest request,Search s) throws ParseException {
		Users u = (Users)session.getAttribute("user");
		List<Resources> resources = rs.getsearchResource(s, u);
		List<String> coursenames = cs.getmycoursename(u);
		request.setAttribute("names", coursenames);
		request.setAttribute("resources",resources);
		return "myresourceresearch";
	}
	//资源库检索
		@RequestMapping(value="/searched",method=RequestMethod.POST)
		public String getallSearchresource(HttpSession session,HttpServletRequest request,Search s) throws ParseException {
			Users u = (Users)session.getAttribute("user");
			List<Resources> resources = rs.getallsearchResource(s, u);
			List<String> coursenames = cs.getmycoursename(u);
			request.setAttribute("names", coursenames);
			request.setAttribute("resources",resources);
			request.setAttribute("search", s);
			return "researchresult";
		}
		//热门词汇检索
		@RequestMapping(value="/hotsearched",method=RequestMethod.GET)
		public String getSearchresourcebyhot(HttpSession session,HttpServletRequest request,String hot) throws ParseException {
			Users u = (Users)session.getAttribute("user");
			List<String> coursenames = cs.getmycoursename(u);
			Search s = new Search();
			s.setTitle(hot);
			List<Resources> resources = rs.getsearchResourcebyhot(s, u);
			request.setAttribute("names", coursenames);
			request.setAttribute("resources",resources);
			request.setAttribute("search", s);
			return "researchresult";
		}
		@RequestMapping(value="/share",method=RequestMethod.GET)
		public String getShareresource(HttpSession session,HttpServletRequest request) {
			List<Resources> share = rs.getsharer();
			List<Resources> hotlook = rs.getlooktimesmax();
			System.out.println("controller"+hotlook.size());
			request.setAttribute("hotlook", hotlook);
			request.setAttribute("share", share);
			return "share";
		}
		@RequestMapping(value="/myshare",method=RequestMethod.GET)
		public String getmyShareresource(HttpSession session,HttpServletRequest request) {
			Users u = (Users)session.getAttribute("user");
			List<Resources> share = rs.getmysharer(u);
			request.setAttribute("share", share);
			return "myshare";
		}
}
