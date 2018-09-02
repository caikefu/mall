package com.wh.mall.demo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wh.mall.basic.bean.Common;
import com.wh.mall.basic.bean.JsonResult;
import com.wh.mall.basic.bean.Page;
import com.wh.mall.basic.bean.PageData;
import com.wh.mall.demo.service.DemoService;
import com.wh.mall.utils.BaseController;
import com.wh.mall.utils.Const;
import com.wh.mall.utils.Util;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController 
@RequestMapping("/api")
public class RestfulController extends BaseController{ 
	 
	@Autowired 
	private DemoService demoService;  
	  
	/**
	 * 分页条件查询用户
	 * @param id
	 * @return
	 */
	@ApiOperation(value="获取用户列表", notes="根据查询条件来获取用户列表")
	@ApiImplicitParams( 
			{  
				//@ApiImplicitParam(name = "data", value = "参数集合{\"index\":1,\"size\":10,\"section\":1, \n asd=1,asda=1,asda=2}", required = true, dataType = "json", paramType = "列表查询"), 
				@ApiImplicitParam(name = "index", value = "页数", required = true, dataType = "int", paramType = "path"), 
				@ApiImplicitParam(name = "size", value = "数据量", required = true, dataType = "int", paramType = "path"), 
				@ApiImplicitParam(name = "section", value = "部门", required = false, dataType = "string", paramType = "path")
			} 
	)
	@ApiResponses({ @ApiResponse(code = Common.SUCCESS, message = "操作成功"),
        @ApiResponse(code = Common.FAILED, message = "服务器内部异常")})
	@GetMapping("user")
	public ResponseEntity<JsonResult> getUserList (){ 
		JsonResult r = new JsonResult();
		try {  
			Page page = new Page();   
			PageData pd = new PageData(); 
			pd = this.getPageData();
			Util.setPage(page, pd);
			page.setPd(pd); 
			List<PageData> list = demoService.listPdPageUser(page);  
			r.setStatus(Common.SUCCESS);
			r.setResult(list);
		} catch (Exception e) {
			r.setResult(Common.FAILED);
			r.setReason(e.getClass().getName()+":"+e.getMessage());
			e.printStackTrace();
		}
		return ResponseEntity.ok(r);
	}  

	/**
	 * 根据ID查询用户
	 * @param id
	 * @return
	 */
	@ApiOperation(value="获取用户详细信息", notes="根据url的id来获取用户详细信息")
	@ApiImplicitParam(name = "id", value = "用户ID", required = true, dataType = "Int", paramType = "path") 
	@GetMapping("user/{id}")
	public ResponseEntity<JsonResult> getUserById (@PathVariable(value = "id") Integer id){ 
		JsonResult r = new JsonResult();
		try { 
			PageData user = new PageData();  
			user = this.getPageData();
			user.put("id", "1"); 
			user.put("name", "王小三");
			r.setResult(user);
			r.setStatus(Common.SUCCESS);
		} catch (Exception e) {
			r.setResult(Common.FAILED);
			r.setReason(e.getClass().getName()+":"+e.getMessage());
			e.printStackTrace();
		}
		return ResponseEntity.ok(r);
	}  
	 
	/**
	 * 根据ID修改用户
	 * @param id
	 * @return
	 */
	@ApiOperation(value="修改用户", notes="根据ID修改用户信息")
	@ApiImplicitParams( 
			{  
				@ApiImplicitParam(name = "data", value = "参数集合", required = true, dataType = "json", paramType = "修改",example="{id:1,name:小明}")
			} 
	)
	@ApiResponses({ @ApiResponse(code = Common.SUCCESS, message = "操作成功"),
        @ApiResponse(code = Common.FAILED, message = "服务器内部异常")})
        //@ApiResponse(code = CommonStatus.FORBIDDEN, message = "权限不足") 
	@PutMapping("user/{id}")
	public ResponseEntity<JsonResult> updateUserById (@RequestBody PageData data){ 
		JsonResult r = new JsonResult();
		try {  
			logger.info("修改客户信息"); 
			PageData user = new PageData(); 
			user = demoService.findByUiId(data);
			r.setResult(user);
			r.setStatus(Common.SUCCESS);
		} catch (Exception e) {
			r.setResult(Common.FAILED);
			r.setReason(e.getClass().getName()+":"+e.getMessage());
			e.printStackTrace();
		}
		return ResponseEntity.ok(r);
	} 
	

}
