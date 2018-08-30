package com.wh.mall.demo.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wh.mall.basic.bean.Common;
import com.wh.mall.basic.bean.JsonResult;
import com.wh.mall.basic.bean.PageData;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

@RestController 
@RequestMapping("/api")
public class RestfulController {

	/**
	 * 根据ID查询用户
	 * @param id
	 * @return
	 */
	@ApiOperation(value="获取用户详细信息", notes="根据url的id来获取用户详细信息")
	@ApiImplicitParam(name = "id", value = "用户ID", required = true, dataType = "Integer", paramType = "path") 
	@GetMapping("user/{id}")
	public ResponseEntity<JsonResult> getUserById (@PathVariable(value = "id") Integer id){ 
		JsonResult r = new JsonResult();
		try { 
			PageData user = new PageData();
			user.put("id", "1"); 
			user.put("name", "王小二");
			r.setEntity(user);
			r.setResult(Common.SUCCESS);
		} catch (Exception e) {
			r.setResult(Common.FAILED);
			r.setReason(e.getClass().getName()+":"+e.getMessage());
			e.printStackTrace();
		}
		return ResponseEntity.ok(r);
	}

}
