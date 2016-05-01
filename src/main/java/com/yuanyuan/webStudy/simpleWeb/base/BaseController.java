package com.yuanyuan.webStudy.simpleWeb.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

public abstract class BaseController {
	private String remoteIpAddr;
	private HttpSession session;
	private HttpServletRequest request;

	private static String webappDomain = null;
	
	public void init(HttpServletRequest request)
	{
		this.request = request;
		this.session = request.getSession();
		this.remoteIpAddr = getRemoteIpAddr(request);

	}
	
	/**
	 * 获取请求者IP地址
	 * 
	 * @return IP地址
	 */
	public final String getRemoteIpAddr()
	{
		return remoteIpAddr;
	}
	
	/**
	 * 获取WEB应用域名
	 * 
	 * @return 域名，如果设置了webapp.domain
	 */
	public final String getWebAppDomain()
	{
		return webappDomain;
	}
	
	/**
	 * 获取HttpSession
	 * 
	 * @return HttpSession
	 */
	public final HttpSession getSession()
	{
		return session;
	}
	

	/**
	 * 请求跳转
	 * 
	 * @param url 跳转地址
	 * @return 如果设置webapp.doamin则返回完整的跳转地址
	 */
	public final String redirect(String url)
	{
		Assert.hasLength(url, "URL不能为空");
		
		return "redirect:" + webappDomain + url;
	}
	
	
	/**
	 * 获取WEB应用真实路径
	 * 
	 * @param path 真实根路径要追加的指定虚拟路径
	 * @return 真实路径
	 */
	public final String getWebAppRealPath(String path)
	{
		return session.getServletContext().getRealPath(path);
	}
	
	/**
	 * 获取WEB应用上下文路径
	 * 
	 * @param path 上下文路径要追加的指定虚拟路径
	 * @return 上下文路径
	 */
	public final String getWebAppContextPath(String path)
	{
		return request.getContextPath() + path;
	}
	
	public static String getRemoteIpAddr(HttpServletRequest request)
	{
		String ip = request.getHeader("x-forwarded-for");

		if (!StringUtils.hasText(ip) || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getHeader("Proxy-Client-IP");
		}

		if (!StringUtils.hasText(ip) || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getHeader("WL-Proxy-Client-IP");
		}

		if (!StringUtils.hasLength(ip) || "unknown".equalsIgnoreCase(ip))
		{
			ip = request.getRemoteAddr();
		}

		if (!StringUtils.hasText(ip))
		{
			int i = ip.indexOf(",");
			
			if (i != -1)
			{
				ip = ip.substring(0, i);
			}
		}

		return ip;
	}
}
