package com.cjh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjh.entity.Good;
import com.cjh.mapper.GoodMapper;

@Service
public class GoodService {
	@Autowired
	private GoodMapper goodMapper;

	// 查询所有
	public Integer selectCount(String name) throws Exception {
		Map<String,Object> queryMap = new HashMap<String,Object>();
		queryMap.put("name", name);
		return goodMapper.selectCount(queryMap);
	}
	// 查询所有
	public List<Good> selectAll(String name,Integer start,Integer rows) throws Exception {
		Map<String,Object> queryMap = new HashMap<String,Object>();
		queryMap.put("name", name);
		queryMap.put("start", start);
		queryMap.put("rows", rows);
		return goodMapper.selectAll(queryMap);
	}

	// 按id查询
	public Good selectById(Integer id) throws Exception {
		return goodMapper.selectById(id);
	}

	// 修改
	public void update(Good good) throws Exception {
		goodMapper.update(good);
	}

	// 增加
	public void insert(Good good) throws Exception {
		goodMapper.insert(good);
	}

	// 删除
	public void delete(Integer id) throws Exception {
		goodMapper.delete(id);
	}
}
