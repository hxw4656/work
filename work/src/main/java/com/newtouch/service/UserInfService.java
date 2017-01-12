package com.newtouch.service;

import java.util.List;

import com.newtouch.entity.UserInf;

public interface UserInfService {
	
	List<UserInf> queryByUserInf(UserInf userInf);
	
	int queryCountByUserInf(UserInf userInf);
	
	void login(UserInf userInf);
	
	int saveUserInf(UserInf userInf);
	
	int updateUserInf(UserInf userInf);
	
	int deleteUserInf(UserInf userInf);
}
