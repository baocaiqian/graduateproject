package com.rms.group.controller;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rms.entity.Groupmember;
import com.rms.entity.Groups;
import com.rms.entity.Users;
import com.rms.group.service.GroupService;
import com.rms.user.service.UserService;

@Controller
public class GroupController {
	@Resource
	private GroupService groupService;
	private UserService userservice;
	
	
	@RequestMapping(value = "/addGroupController", method = RequestMethod.POST)
	//修改密码
	public String changeEmailPassword(Users user, HttpSession session, HttpServletRequest request) throws Exception {
		
		String name=request.getParameter("name");
		Users u=(Users)session.getAttribute("user");
		Groups gp=this.groupService.chuangjianGroup(name, u);
	    
		this.groupService.addGroupMem(gp, u);
		
		
		List <Groups> listgroupsetter=this.groupService.findchuangjangroup(u);
		
        session.setAttribute("listgroupsetter", listgroupsetter);
		for (Groups gg :listgroupsetter) {
			System.out.println(gg.getId()+"gghjklppppppppppppppppppppppppppppppp");

			}
		
	return "theme"	;
		
	}
	
	
	
	
	
	
	@RequestMapping(value = "/groupxiangqing", method = RequestMethod.GET)
	
	public String tiaozhuan(Users user, HttpSession session, HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));		
		session.setAttribute("grouptzid", id);
		Groups gr=this.groupService.findgroupbyid(id);
		System.out.println(gr.getId()+"__________________________________________");
        List<Groupmember> lgoupmember=  gr.getMembers();
        for (Groupmember gm :lgoupmember) {
			System.out.println(gm.getId()+"gghjklpppppppppppppppppppppppppppppppllllllllllllllllllllllllllllllll");

			}
        session.setAttribute("lgoupmember", lgoupmember);
	   return "safe"	;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/addGroupputongmember", method = RequestMethod.POST)
	public String addGroupputongmember(Users user, HttpSession session, HttpServletRequest request) throws Exception {
		
		Users u=this.groupService.UserCenter(request.getParameter("member"));
				
		
        int groupid=(int) session.getAttribute("grouptzid");		
		Groups g=this.groupService.findgroupbyid(groupid);
		request.getParameter("member");
		String name=request.getParameter("name");
		
		this.groupService.addnewMem(g, u);
		List<Groupmember> lgoupmember=  g.getMembers();
		 session.setAttribute("lgoupmember", lgoupmember);
	    return "safe";
		
	}
	
	
	
	
	

	@RequestMapping(value = "/addGadminmember", method = RequestMethod.GET)
	public String addadminmember(HttpSession session, HttpServletRequest request) throws Exception {
 
	    int memrid=Integer.parseInt(request.getParameter("memrid"));  
		int groupid=(int) session.getAttribute("grouptzid");
		this.groupService.updatemem(memrid, groupid);
		
		
		Groups g=this.groupService.findgroupbyid(groupid);
		List<Groupmember> lgoupmember11=  g.getMembers();
		 session.setAttribute("lgoupmember", lgoupmember11);
	    return "safe";
		
	}
	
	
}
