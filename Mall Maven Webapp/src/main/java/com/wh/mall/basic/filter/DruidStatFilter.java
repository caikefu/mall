package com.wh.mall.basic.filter;


import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import com.alibaba.druid.support.http.WebStatFilter;
  
/**

 * druid数据源状态监控-过滤器

 * @author ckf  
 
 * @date 2018/08/31 

 */ 
@WebFilter(filterName="druidWebStatFilter",urlPatterns="/*",
    initParams={
        @WebInitParam(name="exclusions",value="*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*")//忽略资源
   }
)
public class DruidStatFilter extends WebStatFilter {
	
}
