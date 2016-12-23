package com.newtouch.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.newtouch.dao.UserInfDao;
import com.newtouch.entity.UserInf;

@Service
public class UserInfServiceImpl implements UserInfService {

	@Resource
	private UserInfDao userInfDao;
	
	public List<UserInf> queryByUserInf(UserInf userInf) {
		return userInfDao.queryByUserInf(userInf);
	}

	@Override
	public void login(UserInf userInf) {
		List<UserInf> list = userInfDao.queryByUserInf(userInf);
				
	}

}
