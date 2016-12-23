package com.newtouch.service;

import java.util.List;

import com.newtouch.entity.UserInf;

public interface UserInfService {
	
	List<UserInf> queryByUserInf(UserInf userInf);
	
	void login(UserInf userInf);
}
