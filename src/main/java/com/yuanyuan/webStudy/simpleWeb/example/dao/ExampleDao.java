package com.yuanyuan.webStudy.simpleWeb.example.dao;

import java.util.List;
import java.util.Map;

import com.yuanyuan.webStudy.simpleWeb.example.entity.ExampleEntity;

public interface ExampleDao {
	
	void insertCommEntity(ExampleEntity comm);
	
	List<ExampleEntity> queryCommEntitys(Map<String, Object> map);
	
	void exampleDelete(Long id);
}
