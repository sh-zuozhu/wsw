package com.wsw.demo.web.listener;



import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 
 * Application: 核心交易<br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2016 上海华信证券<br/>
 * Create Date：2016年4月28日<br/>
 * 
 * @Author huangxu
 * @Version 1.0
 *
 */
public class LogbackConfigListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent event) {
        LogbackWebConfigurer.initLogging(event.getServletContext());
    }

    public void contextDestroyed(ServletContextEvent event) {
        LogbackWebConfigurer.shutdownLogging(event.getServletContext());
    }

}
