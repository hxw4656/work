package com.newtouch.dao;

import java.util.List;

import com.newtouch.entity.UserInf;

public interface UserInfDao {
	public List<UserInf> queryByUserInf(UserInf userInf);
	
	public int queryCountByUserInf(UserInf userInf);
	
	public int saveUserInf(UserInf userInf);
	
	public int updateUserInf(UserInf userInf);
	
	public int deleteUserInf(UserInf userInf);
}
