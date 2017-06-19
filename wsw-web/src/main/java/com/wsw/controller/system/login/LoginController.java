package com.wsw.controller.system.login;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.jboss.netty.util.internal.StringUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wsw.controller.base.BaseController;
import com.wsw.util.model.Const;
import com.wsw.util.model.PageData;
import com.wsw.util.tools.AppUtil;
import com.wsw.util.tools.Jurisdiction;

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
			Session session = Jurisdiction.getSession();
			String code = keyData[2];
			if(StringUtils.isEmpty(code)){
				errInfo = "nullcode";
			}
			String userName = keyData[0];
			String password = keyData[1];
			String sesionCode = (String) session.getAttribute(Const.SESSION_SECURITY_CODE);
			 //1.校验图片验证码
			if(StringUtils.isEmpty(sesionCode) || !sesionCode.equalsIgnoreCase(code)){
				errInfo = "errorcode";
			}
			 //2.验证用户名密码
			String passwd = new SimpleHash("SHA-1", userName, password).toString();
			
		}else {
			errInfo = "paramserror";//缺少参数
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(pd, map);
	}

}
