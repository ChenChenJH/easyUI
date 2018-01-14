package com.cjh.mapper;

import java.util.List;
import java.util.Map;

import com.cjh.entity.Good;

public interface GoodMapper {
	//查询数据总数
	public Integer selectCount(Map<String,Object> queryMap) throws Exception;
	
	//查询所有
	public List<Good> selectAll(Map<String,Object> queryMap) throws Exception;
	
	//按id查询
	public Good selectById(Integer id) throws Exception;
	
	//修改
	public void update(Good good) throws Exception;
	
	//增加
	public void insert(Good good) throws Exception;
	
	//删除
	public void delete(Integer id) throws Exception;
}
