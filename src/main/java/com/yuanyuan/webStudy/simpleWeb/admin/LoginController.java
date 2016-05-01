package com.yuanyuan.webStudy.simpleWeb.admin;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuanyuan.webStudy.simpleWeb.base.BaseController;


@Controller
public class LoginController extends BaseController
{
	@RequestMapping(value="/index")
	public String index(HttpServletRequest request, HttpServletResponse response, String userName, String password)
	{
		return "login";
	}
	
	@RequestMapping(value="/login")
	public String login(HttpServletRequest request, HttpServletResponse response, String userName, String password)
	{
		return "desktop";
	}
	
	@RequestMapping(value="/homepage")
	public String homepage(HttpServletRequest request, HttpServletResponse response, String userName, String password)
	{
		return "success";
	}
	
}