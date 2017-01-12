package com.newtouch.common.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class Page<T> implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3326979900769784622L;

	/** 总记录数 */
	private int totalCount;

	/** 每页记录数 */
	private int pageSize = 1;

	/** 当前页索引 */
	private int pageIndex = 1;

	private List<T> result = new ArrayList<T>();
}
