package com.wsw.framework.manager;

import com.wsw.dao.model.User;

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
public interface UserManager {

	User queryUserByUserNameAndPassword(String userName, String password);

}
