package com.wsw.framework.managerImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wsw.dao.mapper.UserMapper;
import com.wsw.framework.manager.UserManager;
import com.wsw.model.pojo.User;

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
@Service
public class UserManagerImpl implements UserManager{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User queryUserByUserNameAndPassword(String userName, String password){
		return userMapper.queryUserByUserNameAndPassword(userName, password);
	}
	
	@Override
	public int insert(User user){
		return userMapper.insert(user);
	}

}
