package com.wsw.dao.mapper;

import org.apache.ibatis.annotations.Param;

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
public interface UserMapper {
    int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /**
     * 根据用户名，密码查询用户
     * @param userName
     * @param password
     * @return
     */
	User queryUserByUserNameAndPassword(@Param("username")String username, @Param("password")String password);
}