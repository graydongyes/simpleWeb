package com.yuanyuan.webStudy.simpleWeb.example.entity;

import com.yuanyuan.webStudy.simpleWeb.base.Entity;

public class ExampleEntity extends Entity{
	private static final long serialVersionUID = 271315026322139110L;
	
	private Long id;
	private String col1;
	private String col2;
	private String col3;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCol1() {
		return col1;
	}
	public void setCol1(String col1) {
		this.col1 = col1;
	}
	public String getCol2() {
		return col2;
	}
	public void setCol2(String col2) {
		this.col2 = col2;
	}
	public String getCol3() {
		return col3;
	}
	public void setCol3(String col3) {
		this.col3 = col3;
	}
}