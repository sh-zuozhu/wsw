package com.wsw.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wsw.model.pojo.entity.system.Menu;




/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: 菜单<br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年7月4日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
public interface MenuMapper {
    int deleteByPrimaryKey(Integer menuId);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer menuId);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    /**
     * 查询所有菜单
     * @return
     */
	List<Menu> queryAllMenu();

	/**
	 * 根据parentId查询所有一级子菜单
	 * @param parentId
	 * @return
	 */
	List<Menu> queryByParentId(@Param("parentId")String parentId);
}