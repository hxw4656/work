package com.newtouch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/")
public class UserInfController {
	
	@RequestMapping("index")
	@ResponseBody
	public String index(){
		return "hello world";
	}
}
