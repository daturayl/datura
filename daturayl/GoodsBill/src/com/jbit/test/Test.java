package com.jbit.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;
import com.jbit.service.impl.GoodsServiceImpl;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
        ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
        GoodsService gs=(GoodsServiceImpl) ac.getBean("GoodsService");
        Goods g=new Goods();
        
	}

}
