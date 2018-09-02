package com.wh.mall;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.Bean;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import springfox.documentation.swagger2.annotations.EnableSwagger2;
  
@ServletComponentScan  
@EnableSwagger2
@SpringBootApplication/*(exclude =  {DataSourceAutoConfiguration.class})*/
public class MallApplication {
	 
	public static void main(String[] args) {
		SpringApplication.run(MallApplication.class, args);
	} 
	 

}
