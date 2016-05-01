package com.yuanyuan.webStudy.simpleWeb.base;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

public abstract class Entity implements Serializable {

	private static final long serialVersionUID = -7112909208665946812L;
	
	public String toString()
	{
		return ToStringBuilder.reflectionToString(this);
	}
}
