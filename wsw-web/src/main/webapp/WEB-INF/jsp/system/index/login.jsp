<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="static/login/bootstrap.min.css" />
<link rel="stylesheet" href="static/login/css/camera.css" />
<link rel="stylesheet" href="static/login/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="static/login/matrix-login.css" />
<link href="static/login/font-awesome.css" rel="stylesheet" />
<script type="text/javascript" src="static/login/js/jquery-1.5.1.min.js"></script>
<!-- 软键盘控件start -->
<link href="static/login/keypad/css/framework/form.css" rel="stylesheet"
	type="text/css" />


<title>Insert title here</title>
</head>
<body>
	<div
		style="width: 100%; text-align: center; margin: 0auto; position: absolute;">
		<div id="windows1">
			<div id="loginbox">
				<form action="" method="post" name="loginForm" id="loginForm">
					<div class="control-group normal_text">
						<h3>
							<img alt="Logo" src="static/login/logo.png">
						</h3>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_lg"> <i><img height="37"
										src="static/login/user.png"></i>
								</span> <input type="text" name="loginname" id="loginname" value=""
									placeholder="请输入用户名" />
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="main_input_box">
								<span class="add-on bg_ly"> <i><img height="37"
										src="static/login/suo.png"></i></span> <input type="password"
									name="password" id="password" placeholder="请输入密码"
									class="keypad" keypadMode="full" allowKeyboard="true" vaule="" />
							</div>
						</div>
					</div>
					<div style="float: right; padding-right: 10%;">
						<div style="float: left; margin-top: 3px; margin-right: 2px;">
							<font color="white">记住密码</font>
						</div>
						<div style="float: left;">
							<input name="form-field-checkbox" id="saveid" type="checkbox"
								onclick="savePaw();" style="padding-top: 0px;" />
						</div>
					</div>
					<div class="form-actions">
						<div style="width: 86%; padding-left: 8%;">
							<div style="float: left; padding-top: 2px;">
								<i><img src="static/login/yan.png" /></i>
							</div>
							<div style="float: left;" class="codediv">
								<input type="text" name="code" id="code" class="login_code"
									style="height: 16px; padding-top: 4px;" />
							</div>
							<div style="float: left;">
								<i><img id="codeImg" style="height: 22px;" alt="点击更换"
									title="点击更换" src="" /></i>
							</div>
							<span class="pull-right" style="padding-right: 3%;"><a
								href="javascript:changepage(1);" class="btn btn-success">注册</a></span>
							<span class="pull-right"><a onclick="serverCheck();"
								class="flip-link btn btn-info" id="ta-recover">登陆</a></span>
						</div>
					</div>
				</form>
				<div class="controls">
					<div class="main_input_box">
						<font color="white"><span id="nameerr">Copyright ©
								FHqq313596790 2100</span></font>
					</div>
				</div>
			</div>
		</div>

		<!-- 注册 -->
		<div id="windows2" style="display: none;">
			<div id="loginbox">
				<form action="" method="post" name="loginFrom" id="loginFrom">
					<div class="control-group">
						<div class="main_input_box">
							<span class="add-on bg_lg"> <i>用户</i>
							</span> <input type="text" name="USERNAME" id="USERNAME" value=""
								placeholder="请输入用户名" />
						</div>
					</div>
					<div class="control-group">
						<div class="main_input_box">
							<span class="add-on bg_lg"> <i>密码</i>
							</span> <input type="password" name="PASSWORD" id="PASSWORD" value=""
								placeholder="请输入密码" class="keypad" keypadMode="full"
								allowKeyboard="true" value="" />
						</div>
					</div>
					<div class="control-group">
						<div class="main_input_box">
							<span class="add-on bg_lg"> <i>重输</i>
							</span> <input type="password" name="chkpwd" id="chkpwd" value=""
								placeholder="请重新输入密码" class="keypad" keypadMode="full"
								allowKeyboard="true" value="" />
						</div>
					</div>
					<div class="control-group">
						<div class="main_input_box">
							<span class="add-on bg_lg"> <i>姓名</i>
							</span> <input type="text" name="NAME" id="name" value=""
								placeholder="请输入姓名" />
						</div>
					</div>
					<div class="control-group">
						<div class="main_input_box">
							<span class="add-on bg_lg"> <i>邮箱</i>
							</span> <input type="text" name="EMAIL" id="EMAIL" value=""
								placeholder="请输入邮箱" />
						</div>
					</div>
					<div class="form-actions">
						<div style="width: 86%; padding-left: 8%;">
							<div style="float: left; padding-top: 2px;">
								<i><img src="static/login/yan.png"></i>
							</div>
							<div style="float: left;" class="codediv">
								<input type="text" name="rcode" id="rcode" class="login_code"
									style="height: 16px; padding-top: 4px;" />
							</div>
							<div style="float: left;">
								<i><img style="height: 22px;" id="zcodeImg" alt="点击更换"
									titel="点击更换" src=""></i>
							</div>
							<span class="pull-right" style="padding-right: 3%;"><a
								href="javascript:changepage(2);" class="btn btn-success">取消</a></span>
							<span class="pull-right"><a onclick="register()"
								class="flip-link btn btn-info" id="to-recover">提交</a></span>
						</div>
					</div>
				</form>
				<div class="controls">
					<div class="main_input_box">
						<font color="white"><span id="nameerr">Copyright ©
								FHqq313596790 2100</span></font>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<div data-src="static/login/images/banner_slide_01.jpg"></div>
			<div data-src="static/login/images/banner_slide_02.jpg"></div>
			<div data-src="static/login/images/banner_slide_03.jpg"></div>
			<div data-src="static/login/images/banner_slide_04.jpg"></div>
			<div data-src="static/login/images/banner_slide_05.jpg"></div>
		</div>
	</div>


	<script type="text/javascript">
		

		$(document).ready(function() {
			changeCode1();
			changeCode2();
			$("#codeImg").bind("click", changeCode1);
			$("#zcodeImg").bind("click", changeCode2);
		});
		function changeCode1() {
			$("#codeImg").attr("src", "code.do?t=" + genTimestamp());
		}
		function changeCode2() {
			$("#zcodeImg").attr("src", "code.do?t=" + genTimestamp());
		}
		function genTimestamp() {
			var time = new Date();
			return time.getTime();
		}
		
		function serverCheck() {
// 			if (check()) {
// 				var loginname = $("#loginname").val();
// 				var password = $("#password").val();
// 				var code = loginname + "," + password + "," + $("#code").val();
// 				$.ajax({
// 					type : "POST",
// 					url : 'login_login',
// 					data : {
// 						KEYDATA : code,
// 						tm : new Date().getTime()
// 					},
// 					dataType : 'json',
// 					cache : false,
// 					success : function(data) {
// 						if ("success" == data.result) {
// // 							saveCookie();
<%-- 							window.location.href = "<%=basePath%>main/index"; --%>
// 						}
// 					}
// 				});
// 			}
			
			if(true){
				var loginname = $("#loginname").val();
				var password = $("#password").val();
				var code = loginname + "," + password + "," + $("#code").val();
				$.ajax({
					type: "POST",
					url: 'login_login',
			    	data: {KEYDATA:code,tm:new Date().getTime()},
					dataType:'json',
					cache: false,
					success: function(data){
						if("success" == data.result){
							alert("1234");
// 							saveCookie();
							window.location.href="<%=basePath%>main/index";
						}else if("usererror" == data.result){
							$("#loginname").tips({
								side : 1,
								msg : "用户名或密码有误",
								bg : '#FF5080',
								time : 15
							});
							showfh();
							$("#loginname").focus();
						}else if("codeerror" == data.result){
							$("#code").tips({
								side : 1,
								msg : "验证码输入有误",
								bg : '#FF5080',
								time : 15
							});
							showfh();
							$("#code").focus();
						}else{
							$("#loginname").tips({
								side : 1,
								msg : "缺少参数",
								bg : '#FF5080',
								time : 15
							});
							showfh();
							$("#loginname").focus();
						}
					}
				});
			}
		}
		
		function register(){
			if(true){
				$.ajax({
					type:"POST",
					url:'appSysUser/registerSysUser.do',
					data:{username:$("#USERNAME").val(), password:$("#PASSWORD").val(), name:$("#NAME").val(), email:$("#EMAIL").val(), rcode:$("#rcode").val()},
					dataType:'json',
					cache: false,
					success: function(data){
						if("000000" == data.result){
							$("#windows2").hide();
							$("#windows1").show();
							$("#loginbox").tips({
								side:1,
								msg:'注册成功,请登录',
								bg:'#68B500',
								time:3
							});
							changeCode1();
						}else if("000004" ==  data.result){
							$("#USERNAME").tips({
								side:1,
								msg:'用户名已存在',
								bg:'#FF5080',
								time:15
							});
						}else if("000006" == data.result){
							$("#rcode").tips({
								side:1,
								msg:'验证码输入有误',
								bg:'#FF5080',
								time:15
							});
						}
					}
				});
			}
		}
		
		function check(){
// 			if($("#loginname").val() == ""){
// 				$("#loginname").tips({
// 					side :2,
// 					msg : '用户名不能为空',
// 					bg : '#AE81FF',
// 					time : 3
// 				});
// 			}
			return true;
		}
		
		<!--登录注册用户切换 -->
	function changepage(value){
		if(value == 1){
			$("#windows1").hide();
			$("#windows2").show();
			changeCode2();
		}else{
			$("#windows2").hide();
			$("#windows1").show();
			changeCode1();
		}
	}
	
	</script>





	<script src="static/login/js/bootstrap.min.js"></script>
	<script src="static/js/jquery-1.7.2.js"></script>
	<script src="static/login/js/jquery.easing.1.3.js"></script>
	<script src="static/login/js/jquery.mobile.customized.min.js"></script>
	<script src="static/login/js/camera.min.js"></script>
	<script src="static/login/js/templatemo_script.js"></script>
	<script type="text/javascript" src="static/js/jQuery.md5.js"></script>
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<script type="text/javascript" src="static/js/jquery.cookie.js"></script>
	<script src="static/login/js/ban.js"></script>

	<!-- 软键盘控件start -->
	<script type="text/javascript"
		src="static/login/keypad/js/form/keypad.js"></script>
	<script type="text/javascript"
		src="static/login/keypad/js/framework.js"></script>
	<!-- 软键盘控件end -->

</body>
</html>