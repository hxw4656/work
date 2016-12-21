package com.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.newtouch.entity.UserInf;
import com.newtouch.service.UserInfService;


@RunWith(SpringJUnit4ClassRunner.class) // 整合 
@ContextConfiguration(locations="classpath:applicationContext.xml") // 加载配置
public class TestApp {
	
	@Resource
	private UserInfService UserInfService;
	
	@Test
	public void test(){
		UserInf userInf = new UserInf();
		List<UserInf> list = UserInfService.queryByUserInf(userInf);
		System.out.println(list.size());
		System.out.println("aa");
	}
	
}
