package com.newtouch.dao;

import java.util.List;

import com.newtouch.entity.UserInf;

public interface UserInfDao {
	public List<UserInf> queryByUserInf(UserInf userInf);
}
