package com.wsw.model.pojo;

import java.util.List;

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
public class Menu {
    private Integer menuId;

    private String menuName;

    private String menuUrl;

    private String parentId;

    private String menuOrder;

    private String menuIcon;

    private String menuType;

    private Integer menuState;
    
    /**
     * 子菜单
     */
    private List<Menu> subMenu;
    
    private boolean hasMenu = true;
    
    private String target;

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl == null ? null : menuUrl.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getMenuOrder() {
        return menuOrder;
    }

    public void setMenuOrder(String menuOrder) {
        this.menuOrder = menuOrder == null ? null : menuOrder.trim();
    }

    public String getMenuIcon() {
        return menuIcon;
    }

    public void setMenuIcon(String menuIcon) {
        this.menuIcon = menuIcon == null ? null : menuIcon.trim();
    }

    public String getMenuType() {
        return menuType;
    }

    public void setMenuType(String menuType) {
        this.menuType = menuType == null ? null : menuType.trim();
    }

    public Integer getMenuState() {
        return menuState;
    }

    public void setMenuState(Integer menuState) {
        this.menuState = menuState;
    }

	public List<Menu> getSubMenu() {
		return subMenu;
	}

	public void setSubMenu(List<Menu> subMenu) {
		this.subMenu = subMenu;
	}

	public boolean isHasMenu() {
		return hasMenu;
	}

	public void setHasMenu(boolean hasMenu) {
		this.hasMenu = hasMenu;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
}