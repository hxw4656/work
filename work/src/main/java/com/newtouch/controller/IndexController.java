package com.newtouch.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newtouch.entity.UserInf;
import com.newtouch.service.UserInfService;

@Controller
public class IndexController {
	
	@Resource
	private UserInfService userInfService;

	@RequestMapping(value = "/login")
	public String login(UserInf userInf){
		
		return "main";
	}
	
	@RequestMapping(value = "/toLogin")
	public String toLogin(){
		return "login";
	}
	
}
