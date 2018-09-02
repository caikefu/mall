package com.wh.mall.basic.bean;


public class JsonResult { 
	/**
	 * 状态反回 0:成功1：异常
	 */
	private int status; 
	private Object result;  
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	
	
	
}
