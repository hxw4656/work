package com.newtouch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ErrorController {
	
	
	@RequestMapping(name = "/error")
	@ResponseBody
	public String error(){
		
		return "error";
	}
}
