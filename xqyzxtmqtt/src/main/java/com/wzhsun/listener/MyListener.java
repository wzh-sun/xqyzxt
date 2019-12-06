package com.wzhsun.listener;

import com.wzhsun.thread.MyThread;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 后台mqtt接收数据线程监听
 */
public class MyListener implements ServletContextListener {

    private MyThread myThread;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        String str = null;
        if (str ==null && myThread == null){
            myThread = new MyThread();
            myThread.start();//servlet上下文初始化启动
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        if (myThread != null && myThread.isInterrupted()){
            myThread.interrupt();//如果线程不为空就直接关闭线程
        }
    }
}
