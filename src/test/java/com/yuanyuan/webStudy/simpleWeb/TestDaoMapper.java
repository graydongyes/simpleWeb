package com.yuanyuan.webStudy.simpleWeb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yuanyuan.webStudy.simpleWeb.example.dao.ExampleDao;
import com.yuanyuan.webStudy.simpleWeb.example.entity.ExampleEntity;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:application.xml"})
public class TestDaoMapper
{
	
	@Autowired
	private ExampleDao commonDao;
	
	@Test
	public void tesDao(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<ExampleEntity> commList = commonDao.queryCommEntitys(map);
		System.out.println(commList.size());
	}
}
