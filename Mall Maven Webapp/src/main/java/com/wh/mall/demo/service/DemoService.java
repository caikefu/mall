package com.wh.mall.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wh.mall.basic.bean.Page;
import com.wh.mall.basic.bean.PageData;
import com.wh.mall.basic.dao.DaoSupport;

 
@Service
public class DemoService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	//======================================================================================
	
	/*
	* 通过id获取数据
	*/
	public PageData findByUiId(PageData pd)throws Exception{
		return (PageData)dao.findForObject("StaffMapper.findById", pd);
	}
	
	
	/*
	* 保存
	*/
	public void saveU(PageData pd)throws Exception{
		dao.save("StaffMapper.saveEntity", pd);
	} 
	
	/*
	* 修改
	*/
	public void editU(PageData pd)throws Exception{
		dao.update("StaffMapper.updateEntity", pd);
	} 

	
	/*
	*列表
	*/
	public List<PageData> listPdPageUser(Page page)throws Exception{
		return (List<PageData>) dao.findForList("StaffMapper.querylistPage", page);
	} 
	  
	/**********************************2018/08/15********************************************/
	/*
	* 通过id获取数据
	*/
	public PageData querydepartmentsbyId(PageData pd)throws Exception{
		return (PageData)dao.findForObject("StaffMapper.querydepartmentsbyId", pd);
	}
	/*
	* 保存
	*/
	public void insertdepartments(PageData pd)throws Exception{
		dao.save("StaffMapper.insertdepartments", pd);
	}
	/*
	* 修改
	*/
	public void updatedepartments(PageData pd)throws Exception{
		dao.update("StaffMapper.updatedepartments", pd);
	} 
	/*
	*列表
	*/
	public List<PageData> querydepartmentsList(PageData pd)throws Exception{
		return (List<PageData>) dao.findForList("StaffMapper.querydepartmentsList", pd);
	}
	 
	public PageData queryDefaultCompany(PageData pd)throws Exception{ 
		return (PageData)dao.findForObject("StaffMapper.queryDefaultCompany", pd);
	} 
	 
	public int queryHasPhone(PageData pd)throws Exception{  
		return  (Integer) dao.findForObject("StaffMapper.queryHasPhone", pd);
	} 
	 
	public void deleteDepartmentsById(PageData pd)throws Exception{  
		 dao.delete("StaffMapper.deleteDepartmentsById", pd);
	} 
}
