package com.wh.mall.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.wh.mall.basic.bean.Common;
import com.wh.mall.basic.bean.Page;
import com.wh.mall.basic.bean.PageData;

public class Util {
	 /**
	  * 验证手机号码
	  * @param
	  * @return
	  */
	 public static boolean checkMobileNumber(String mobileNumber){
	  boolean flag = false;
	  try{
	    Pattern regex = Pattern.compile("^(((13[0-9])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8})|(0\\d{2}-\\d{8})|(0\\d{3}-\\d{7})$");
	    Matcher matcher = regex.matcher(mobileNumber);
	    flag = matcher.matches();
	   }catch(Exception e){
	    flag = false;
	   }
	  return flag;
	 } 
	  
	 /**
	   * 验证邮箱
	  * @param email
	  * @return
	  */
	 public static boolean checkEmail(String email){
	  boolean flag = false;
	  try{
	    String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
	    Pattern regex = Pattern.compile(check);
	    Matcher matcher = regex.matcher(email);
	    flag = matcher.matches();
	   }catch(Exception e){
	    flag = false;
	   }
	  return flag;
	 } 
	   
	 /**
	    * 判断是否为数字
	  * @param str
	  * @return
	  */
	 public static boolean isInteger(String str) {
			Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
			return pattern.matcher(str).matches();
	} 
	  
	public static Page setPage(Page page,PageData pd) {  
		page.setCurrentPage(null==pd.get("index")?Common.index:(Integer) pd.get("index")); 
		page.setShowCount(null==pd.get("size")?Common.DEFAULT_SIZE:(Integer) pd.get("size"));
		return page;
	}
}
