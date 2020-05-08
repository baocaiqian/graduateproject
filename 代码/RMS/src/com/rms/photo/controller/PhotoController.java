package com.rms.photo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rms.entity.Users;
import com.rms.photo.service.PhotoService;

@Controller
//@RequestMapping("/photo")
public class PhotoController {
	@Resource
	private PhotoService ps;

	@RequestMapping(value="/photoup",method=RequestMethod.POST)
	public String upPhoto(@RequestParam(value="files")MultipartFile []files,HttpServletRequest request,HttpSession session) {
		String path= session.getServletContext().getRealPath("/");
		System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		System.out.println(path);
		Users u = (Users)session.getAttribute("user");
		ps.upPhoto(files, path, u); 
		
		Users u1=this.ps.findUser(u);
		session.setAttribute("user", u1);
		System.out.println("u1的icon为………………………………………………");
		System.out.println(u1.getIcon());
		return "video_add";

	}
}
