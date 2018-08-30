package com.wh.mall.utils;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.wh.mall.basic.bean.Page;
import com.wh.mall.basic.bean.PageData;
import com.wh.mall.basic.bean.Principal;
import com.wh.mall.basic.bean.UserInfo;

public class BaseController {
	
	protected Logger logger = Logger.getLogger(this.getClass());
	public static final String SESSIONKEY_PRINCIPAL = "principal";
	private static final long serialVersionUID = 6357869213649815390L;
	
	/**
	 * 得到PageData
	 */
	public PageData getPageData(){
		return new PageData(this.getRequest());
	}
	
	/**
	 * 得到ModelAndView
	 */
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	
	/**
	 * 得到request对象
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		
		return request;
	}

	/**
	 * 得到32位的uuid
	 * @return
	 */
	public String get32UUID(){
		
		return UuidUtil.get32UUID();
	}
	
	/**
	 * 得到分页列表的信息 
	 */
	public Page getPage(){
		
		return new Page();
	}
	
	public static void logBefore(Logger logger, String interfaceName){
		logger.info("");
		logger.info("start");
		logger.info(interfaceName);
	}
	
	public static void logAfter(Logger logger){
		logger.info("end");
		logger.info("");
	}
    public  UserInfo getUserInfo(){
    	UserInfo userInfo = null;
    	HttpSession session = currentSession();
    	if (session == null) {
    		return userInfo;
    	}
    	Principal principal = (Principal) session.getAttribute(SESSIONKEY_PRINCIPAL);
    	if(principal!=null && principal.getUserInfo()!=null) 
    		userInfo = principal.getUserInfo();
    	return userInfo;
    }
    /**
     * 获取当前session对象. 若当前线程不是web请求或当前尚未创建{@code session}则返回{@code null}.
     *
     * @return 当前session对象或{@code null}.
     */
    protected HttpSession currentSession() {
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (attrs == null) {
            return null;
        }
        return attrs.getRequest().getSession(false);
    }
}
