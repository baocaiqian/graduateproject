package com.rms.index.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class indexcontroller {
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(HttpSession session,HttpServletRequest request) {
		return "index";
	}
}
