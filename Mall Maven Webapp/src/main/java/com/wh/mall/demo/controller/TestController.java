package com.wh.mall.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wh.mall.basic.bean.PropertiesConfig;



@RestController 
@RequestMapping("/api")
public class TestController { 
	@Autowired
	private PropertiesConfig propertiesConfig; 
	
	@GetMapping("/test")
	public String test() { 
		return "Hello World";
	} 
	
}
