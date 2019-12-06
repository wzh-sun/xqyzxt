package com.wzhsun.listener;

import com.wzhsun.utils.SqlSessionFactoryUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 监听初始化容器
 *  开启sqlSession工厂
 */
@WebListener
public class InitSqlSessionListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("容器加载中...");
        //容器初始化 初始化我们的SqlSessionFactory对象
        SqlSessionFactoryUtils.initSqlSessionFactory();

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("容器销毁中...");
        //关闭SqlSession对象
        SqlSessionFactoryUtils.close();
    }
}
