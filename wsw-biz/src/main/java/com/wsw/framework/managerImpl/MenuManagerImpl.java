package com.wsw.framework.managerImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wsw.dao.mapper.MenuMapper;
import com.wsw.framework.manager.MenuManager;
import com.wsw.model.pojo.Menu;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年7月4日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
@Service
public class MenuManagerImpl implements MenuManager {

	@Autowired
	private MenuMapper menuMapper;
	
	@Override
	public List<Menu> queryAllMenu(){
		return menuMapper.queryAllMenu();
	}
	
	@Override
	public List<Menu> listAllMenuQx(String parentId){
		List<Menu> menuList = menuMapper.queryByParentId(parentId);
		for (Menu menu : menuList) {
			menu.setSubMenu(listAllMenuQx(menu.getMenuId().toString()));
			menu.setTarget("treeFrame");
		}
		return menuList;
	}
}
