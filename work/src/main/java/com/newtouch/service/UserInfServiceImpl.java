package com.newtouch.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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

	@Override
	public int queryCountByUserInf(UserInf userInf) {
		return userInfDao.queryCountByUserInf(userInf);
	}

	@Override
	public int saveUserInf(UserInf userInf) {
		return userInfDao.saveUserInf(userInf);
	}

	@Override
	public int updateUserInf(UserInf userInf) {
		return userInfDao.updateUserInf(userInf);
	}

	@Override
	public int deleteUserInf(UserInf userInf) {
		return userInfDao.deleteUserInf(userInf);
	}

}
