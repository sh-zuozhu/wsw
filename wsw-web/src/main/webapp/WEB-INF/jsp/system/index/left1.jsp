<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
	<div id="sidebar" class="sidebar responsive">
		<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
		</script>
		
		<div class="sidebar-shortcuts" id="sidebar-shortcuts">
			<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			</div>
		</div>
		
		<ul class="nav nav-list">
			<li class="">
				<a href="main/index">
					<i class="menu-icon fa fa-tachometer"></i>
					<span class="menu-text">后台首页</span>
				</a>
				<b class="arrow"></b>
			</li>
		
	
		<c:forEach items="${menuList}" var="menu1">
			<c:if test="${'[]' != menu1.subMenu}">
				<li class=""  id="lm${menu1.menuId }">
					<a style="cursor:pointer;" class="dropdown-toggle">
						<i class="${menu1.menuIcon == null ? 'menu-icon fa fa-leaf black' : menu1.menuIcon}"></i>
						<span class="menu-text">
							${menu1.menuName}
						</span>
						<c:if test="${'[]' != menu1.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
					</a>
					<b class="arrow"></b>
					<c:if test="${'[]' != menu1.subMenu}">
<!-- 					<ul class="submenu"> -->
						<c:forEach items="${menu1.subMenu}" var="menu2">
						<c:if test="${menu2.hasMenu}">
							<li>
								<a  style="cursor: pointer;" <c:if test="${not empty menu2.menuUrl && '#' != menu2.menuUrl}"> onclick="siMenu('z${menu2.menuId }','lm${menu1.menuId }','${menu2.menuName }','${menu2.menuUrl }')"</c:if><c:if test="${'[]' != menu2.subMenu}"> class="dropdown-toggle"</c:if>>
									<i class="${menu2.menuIcon == null ? 'menu-icon fa fa-leaf black' : menu2.menuIcon}"></i>
									${menu2.menuName}
									<c:if test="${'[]' != menu2.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
								</a>
								<b class="arrow"></b>
								<c:if test="${'[]' != menu2.subMenu }">
									<c:forEach items="${menu2.subMenu}" var="menu3">
										<c:if test="${menu3.hasMenu}">
										<li>
											<a style="cursor:pointer;" <c:if test="${not empty menu3.menuUrl && '#' != menu3.menuUrl}">target="mainFrame" onclick="siMenu('m${menu3.menuId }','z${menu2.menuId }','${menu3.menuName }','${menu3.menuUrl }')"</c:if><c:if test="${'[]' != menu3.subMenu}"> class="dropdown-toggle"</c:if>>
												<i class="${menu3.menuIcon == null ? 'menu-icon fa fa-leaf black' : menu3.menuIcon}"></i>
													${menu3.menuName }
												<c:if test="${'[]' != menu3.subMenu}"><b class="arrow fa fa-angle-down"></b></c:if>
											</a>
											<b class="arrow"></b>
											<c:if test="${'[]' != menu3.subMenu}">
												<ul>
													<c:forEach items="${menu3.subMenu}" var="menu4">
														<c:if test="${menu4.hasMenu}">
														<li class="" id="n${menu4.menuId}">
															<c:if test="${'[]' != menu4.subMenu}">
																<a style="cursor:pointer;" target="mainFrame" target="mainFrame" onclick="siMenu('n${menu4.menuId }','m${menu3.menuId }','${menu4.menuName }','menu/otherlistMenu.do?MENU_ID=${menu4.menuId }')">
																</c:if>
																<c:if test="${'[]' == menu4.subMenu}">
																<a style="cursor:pointer;" target="mainFrame" <c:if test="${not empty menu4.menuUrl && '#' != menu4.menuUrl}">target="mainFrame" onclick="siMenu('n${menu4.menuId }','m${menu3.menuId }','${menu4.menuName }','${menu4.menuUrl }')"</c:if>>
																</c:if>
																	<i class="${menu4.menuIcon == null ? 'menu-icon fa fa-leaf black' : menu4.menuIcon}"></i>
																	${menu4.menuName }
																</a>
																<b class="arrow"></b>
														</li>
														</c:if>	
													</c:forEach>
												</ul>
											</c:if>											
										</li>
										</c:if>
									</c:forEach>
								</c:if>
							</li>
							</c:if>
						</c:forEach>
					</c:if>
				</li>
			</c:if>
		</c:forEach>
		</ul>

		<!-- #section:basics/sidebar.layout.minimize -->
		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i class="ace-icon fa fa-angle-double-left"
				data-icon1="ace-icon fa fa-angle-double-left"
				data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>

		<!-- /section:basics/sidebar.layout.minimize -->
		<script type="text/javascript">
			try {
				ace.settings.check('sidebar', 'collapsed')
			} catch (e) {
			}
		</script>

	</div>
</body>
</html>