package com.wsw.controller.system.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年6月14日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
@Controller
public class LoginController {
	
	
	@RequestMapping(value="/fhadmin/login")
	public ModelAndView toLogin(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("system/index/login");
		return mv;
	}
	
	@RequestMapping(value="/main/{changeMenu}")
	public ModelAndView login_index(@PathVariable("changeMenu")String changeMenu){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("system/index/login");
		return mv;
	}

}
