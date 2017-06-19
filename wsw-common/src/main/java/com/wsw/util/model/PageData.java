package com.wsw.util.model;


import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年6月16日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
public class PageData extends HashMap<String, Object> implements Map<String, Object>{
	
	private static final long serialVersionUID = 1L;
	
	Map<String, Object> map = null;
	HttpServletRequest request;
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public PageData(HttpServletRequest request){
		this.request = request;
		Map<String, Object> properties = request.getParameterMap();
		Map<String, Object> returnMap = new HashMap<String, Object>(); 
		Iterator<Entry<String, Object>> entries = properties.entrySet().iterator(); 
		Map.Entry entry; 
		String name = "";  
		String value = "";  
		while (entries.hasNext()) {
			entry = (Map.Entry) entries.next(); 
			name = (String) entry.getKey(); 
			Object valueObj = entry.getValue(); 
			if(null == valueObj){ 
				value = ""; 
			}else if(valueObj instanceof String[]){ 
				String[] values = (String[])valueObj;
				for(int i=0;i<values.length;i++){ 
					 value = values[i] + ",";
				}
				value = value.substring(0, value.length()-1); 
			}else{
				value = valueObj.toString(); 
			}
			returnMap.put(name, value); 
		}
		map = returnMap;
	}
	
	public PageData() {
		map = new HashMap<String, Object>();
	}
	
	@Override
	public Object get(Object key) {
		Object obj = null;
		if(map.get(key) instanceof Object[]) {
			Object[] arr = (Object[])map.get(key);
			obj = request == null ? arr:(request.getParameter((String)key) == null ? arr:arr[0]);
		} else {
			obj = map.get(key);
		}
		return obj;
	}
	
	public String getString(Object key) {
		return (String)get(key);
	}
	
	@Override
	public Object put(String key, Object value) {
		return map.put(key, value);
	}
	
	@Override
	public Object remove(Object key) {
		return map.remove(key);
	}

	public void clear() {
		map.clear();
	}

	public boolean containsKey(Object key) {
		return map.containsKey(key);
	}

	public boolean containsValue(Object value) {
		return map.containsValue(value);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Set entrySet() {
		return map.entrySet();
	}

	public boolean isEmpty() {
		return map.isEmpty();
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Set keySet() {
		return map.keySet();
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void putAll(Map t) {
		map.putAll(t);
	}

	public int size() {
		return map.size();
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Collection values() {
		return map.values();
	}
	
}