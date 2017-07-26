package com.wsw.framework.manager;

import java.util.List;

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
public interface MenuManager {

	/**
	 * 查询所有菜单
	 * @return
	 */
	List<Menu> queryAllMenu();

	/**
	 * 根据父id查询所有子菜单
	 * @param parentId
	 * @return
	 */
	List<Menu> listAllMenuQx(String parentId);

}
