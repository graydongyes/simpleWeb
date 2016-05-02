package com.yuanyuan.webStudy.simpleWeb.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yuanyuan.webStudy.simpleWeb.base.BaseController;
import com.yuanyuan.webStudy.simpleWeb.example.dao.ExampleDao;
import com.yuanyuan.webStudy.simpleWeb.example.entity.ExampleEntity;

@Controller
@RequestMapping("/yuan/example")
public class ExampleController extends BaseController{
	
	@Autowired
	private ExampleDao exampleDao;

	@RequestMapping(value="/queryByParam")
	public ModelAndView query(HttpServletRequest request, ExampleEntity comm) throws Exception{
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String,Object> param = new HashMap<String, Object>();
		if(StringUtils.hasText(comm.getCol1())){
			param.put("col1", comm.getCol1());
		}
		if(StringUtils.hasText(comm.getCol2())){
			param.put("col2", comm.getCol2());
		}
		if(StringUtils.hasText(comm.getCol3())){
			param.put("col3", comm.getCol3());
		}
		List<ExampleEntity> commList = exampleDao.queryCommEntitys(param);
		resultMap.put("list", commList);
		return new ModelAndView("/example/list", "map", resultMap);
	}
	
	@RequestMapping(value="/toAddPage")
	public ModelAndView toAddPage(HttpServletRequest request, ExampleEntity comm) throws Exception{
		return  new ModelAndView("/example/add");
	}
	
	@RequestMapping(value="/save")
	public ModelAndView saveComm(HttpServletRequest request, ExampleEntity comm) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			exampleDao.insertCommEntity(comm);
			map.put("message", "保存成功");
		}catch(Exception e){
			map.put("message", "保存失败");
		}
		map.put("refererURL", "/yuan/example/queryByParam.htm");
		return  new ModelAndView("message", "map", map);
//		return  new ModelAndView("redirect:/yuan/example/queryByParam.htm");
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView success(HttpServletRequest request, Long id) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			exampleDao.exampleDelete(id);
			map.put("message", "删除成功");
		}catch(Exception e){
			map.put("message", "删除失败");
		}
		map.put("refererURL", "/yuan/example/queryByParam.htm");
		return  new ModelAndView("message", "map", map);
	}
	
	@RequestMapping(value="/update")
	public ModelAndView tt(HttpServletRequest request) throws Exception{
		return  null;
	}
	
}
