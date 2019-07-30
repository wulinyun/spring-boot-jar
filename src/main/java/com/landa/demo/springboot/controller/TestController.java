package com.landa.demo.springboot.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class TestController {
	    @Autowired  
	    private Environment env;  
	    @Value("${demo.msg}")
	    private String msg;
/*	    @RequestMapping("/")
	    public String hello(){  
	        return msg;  
	    }  */
	    @RequestMapping("/env")   
	    public String index2(String envName){  
	        return "方式二:"+env.getProperty(envName);  
	    }  
	    @RequestMapping("/getTime")   
	    public String getTime(){  
	    	System.out.println("获取时间" + new Date());

		    Date d = new Date();
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		    System.out.println("格式化输出：" + sdf.format(d));

		    sdf.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
		    
		    System.out.println("Asia/Shanghai:" + sdf.format(d));
		    return sdf.format(d);
	    }  
		@RequestMapping("/helloHtml")  
	    public String helloHtml(Map<String,Object> map){  
	       map.put("hello","from TemplateController.helloHtml");  
	       return"/helloHtml";  
	    }  
}
