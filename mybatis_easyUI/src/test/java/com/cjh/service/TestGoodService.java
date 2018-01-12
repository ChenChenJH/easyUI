package com.cjh.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cjh.entity.Good;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class TestGoodService{
	@Autowired
	private GoodService goodService;
	
	@Test
	public void testSelectAll() throws Exception{
		List<Good> list = goodService.selectAll();
		for(Good good:list){
			System.out.println("名称:"+good.getName()+",产量:"+good.getNum()+",月份:"+good.getProTime());
		}
	}
	
	@Test
	public void testSelectById() throws Exception{
		Good good  = goodService.selectById(1);
		System.out.println(good.getName());
	}
	
	@Test
	public void testInsert() throws Exception{
		Good good  = new Good();
		good.setName("测试");
		good.setNum(40);
		good.setProTime("七月");
		goodService.insert(good);
	}
	
	@Test
	public void testUpdate() throws Exception{
		Good good  = new Good();
		good.setId(7);
		good.setName("测试饮料");
		good.setNum(30);
		good.setProTime("八月");
		goodService.update(good);
	}
	
	@Test
	public void testDelete() throws Exception{
		goodService.delete(7);
	}
}
