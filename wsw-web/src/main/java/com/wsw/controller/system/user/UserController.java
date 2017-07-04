package com.wsw.controller.system.user;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wsw.controller.base.BaseController;
import com.wsw.framework.manager.UserManager;
import com.wsw.model.pojo.User;
import com.wsw.util.enums.WswErrorCode;
import com.wsw.util.model.Const;
import com.wsw.util.model.PageData;
import com.wsw.util.tools.AppUtil;
import com.wsw.util.tools.Jurisdiction;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年6月19日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
@Controller
@RequestMapping("/appSysUser")
public class UserController extends BaseController {
	
	@Autowired
	private UserManager userManager;
	
	@RequestMapping(value="/registerSysUser")
	@ResponseBody
	public Object registerSysUser(){
		logBefore(logger, "系统用户注册接口");
		Map<String, String> map = new HashMap<String, String>();
		String result = "000000";
		PageData pd = this.getPageData();
		//1.校验参数非空
		//2.校验图片验证码
		Session session = Jurisdiction.getSession();
		String sessionCode = (String)session.getAttribute(Const.SESSION_SECURITY_CODE);		//获取session中的验证码
		String rcode = pd.getString("rcode");
		if(StringUtils.isEmpty(sessionCode) || !sessionCode.equalsIgnoreCase(rcode)){
			result = WswErrorCode.ImgCodeError.getErrorCode();
			map.put("result", result);
			return AppUtil.returnObject(pd, map);
		}
		//3.校验是否注册
		String password = new SimpleHash("SHA-1", pd.getString("username"), pd.getString("password")).toString();
		User user = userManager.queryUserByUserNameAndPassword(pd.getString("username"), password);
		if(user != null){
			result = WswErrorCode.UserExistsError.getErrorCode();
			map.put("result", result);
			return AppUtil.returnObject(pd, map);
		}
		//4.数据入库
		User regUser = new User();
		regUser.setEmail(pd.getString("email"));
		regUser.setIp(pd.getString("ip"));
		regUser.setName(pd.getString("name"));
		regUser.setPassword(password);
		regUser.setUsername("username");
		regUser.setUserId(get32UUID());
		userManager.insert(regUser);
		map.put("result", result);
		return AppUtil.returnObject(pd, map);
	}

}
