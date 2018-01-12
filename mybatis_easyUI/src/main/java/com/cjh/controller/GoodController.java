package com.cjh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjh.entity.Good;
import com.cjh.service.GoodService;

@Controller
@RequestMapping("/good")
public class GoodController {
	@Autowired
	private GoodService goodService;
	
	@RequestMapping("/selectById")
	@ResponseBody
	public Good selectById(Integer id) throws Exception{
		return goodService.selectById(id);
	}
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public List<Good> selectAll() throws Exception{
		return goodService.selectAll();
	}
	
	@RequestMapping(value="/insert", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String insert(Good good) throws Exception{
		String result = "true";
		try {
			goodService.insert(good);
		} catch (Exception e) {
			result = "已经存在！";
		}
		return result;
	}
	
	@RequestMapping(value="/update", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String update(Good good) throws Exception{
		String result = "true";
		try {
			goodService.update(good);
		} catch (Exception e) {
			result = "操作失败！";
		}
		return result;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public boolean delete(Integer id) throws Exception{
		boolean result = false;
		goodService.delete(id);
		result = true;
		return result;
	}
	
	@RequestMapping("/catalog")
	@ResponseBody
	public String[] catalog() throws Exception{
		String[] strs = new String[]{"测试1","测试2","测试3"};
		return strs;
	}
	
	
}
