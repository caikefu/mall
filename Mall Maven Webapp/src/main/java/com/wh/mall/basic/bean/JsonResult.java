package com.wh.mall.basic.bean;

import java.util.List;

public class JsonResult { 
	/**
	 * 状态反回 0:成功1：异常
	 */
	private int result; 
	private List<Object> list; 
	private Object entity;  
	/**
	 * 失败原因
	 */
	private String reason; 
	
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public List<Object> getList() {
		return list;
	}
	public void setList(List<Object> list) {
		this.list = list;
	}
	public Object getEntity() {
		return entity;
	}
	public void setEntity(Object entity) {
		this.entity = entity;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	
	
}
