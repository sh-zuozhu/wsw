package com.wsw.controller.system.login;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wsw.controller.base.BaseController;
import com.wsw.util.model.PageData;
import com.wsw.util.tools.AppUtil;

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
public class LoginController extends BaseController{
	
	
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
	
	@RequestMapping(value="login_login",produces="application/json;charset=UTF-8")
	@ResponseBody
	public Object login(){
		Map<String, String> map = new HashMap<String, String>();
		PageData pd = this.getPageData();
		String errInfo = "";
		String[] keyData = pd.getString("KEYDATA").split(",");
		if(null != keyData && keyData.length == 3){
			 //1.校验图片验证码
			 //2.验证用户名密码
		}else {
			errInfo = "paramserror";//缺少参数
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(pd, map);
	}

}
