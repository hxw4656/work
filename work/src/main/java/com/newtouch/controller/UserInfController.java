package com.newtouch.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newtouch.common.util.Page;
import com.newtouch.entity.UserInf;
import com.newtouch.service.UserInfService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("system/")
@Log4j
public class UserInfController {
	
	@Resource
	private UserInfService userinfService;
	
	@RequestMapping("showUserInfManager")
	public String showUserInfManager(UserInf userInf,Model model){
		
		Page<UserInf> page = new Page<UserInf>();
		userInf.setLimit(page.getPageSize());
		List<UserInf> userInfList = userinfService.queryByUserInf(userInf);
		
		int count = userinfService.queryCountByUserInf(userInf);
		
		page.setTotalCount(count);
		page.setPageIndex(userInf.getStart()/page.getPageSize() + 1);
		page.setResult(userInfList);
		
		log.info("查询用户" + userInf.getStart() + "  " + userInf.getLimit());		
		
		model.addAttribute("page", page);
		
		return "system/userManager";
	}
	
	@RequestMapping("saveUserInf")
	public String saveUserInf(UserInf userInf){
		
		log.info("接受信息为：" + userInf);
		
		return "redirect:/system/showUserInfManager";
	}
	
	
}
