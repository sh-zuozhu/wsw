package com.wsw.util.enums;

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
public enum WswErrorCode {
	
	Success("000000", "成功"),
	UserExistsError("000004","用户名已存在"),
	ImgCodeError("000006","验证码错误"),
	
	;

	
	private String errorCode;

	private String errorMessage;
	
	WswErrorCode(String errCode, String errMsg){
		this.errorCode = errCode;
		this.errorMessage = errMsg;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	
}
