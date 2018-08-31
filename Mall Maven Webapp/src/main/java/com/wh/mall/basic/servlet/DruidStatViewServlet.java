package com.wh.mall.basic.servlet;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

import com.alibaba.druid.support.http.StatViewServlet;

/**

 * druid数据源状态监控-servlet

 * @author ckf  
 
 * @date 2018/08/31 

 */ 
@WebServlet(urlPatterns="/druid/*",
    initParams={
    		@WebInitParam(name="allow",value=""),// IP白名单(没有配置或者为空，则允许所有访问)
//         @WebInitParam(name="deny",value="192.168.1.73"),// IP黑名单 (存在共同时，deny优先于allow) 
           @WebInitParam(name="loginUsername",value="admin"),// 用户名
           @WebInitParam(name="loginPassword",value="admin"),// 密码
//         @WebInitParam(name="resetEnable",value="false")// 禁用HTML页面上的“Reset All”功能
	})
public class DruidStatViewServlet extends StatViewServlet {
	private static final long serialVersionUID = -2688872071445249539L;
 
}


 


