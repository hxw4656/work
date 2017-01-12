package com.newtouch.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

@Data
public class UserInf implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4664584277874398285L;

	private Long userId;
	
	private String userName;
	
	private String userCode;
	
	private String userNo;
	
	private String userPassword;
	
	private Date createDate;
	
	private Date updateDate;
	
	private String status;
	
	private int start = 0;
	
	private int limit;
	
}
