package com.wzhsun.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 禁止浏览器的默认缓存 过滤器
 */
public class NoCacheFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("过滤器2号启动");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse hsr = (HttpServletResponse) servletResponse;
        System.out.println("禁止缓存过滤器开始");
        hsr.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//不对页面进行缓存，再次访问重新刷新
        hsr.setHeader("Pragma", "no-cache");//HTTP1.0向后兼容
        hsr.setDateHeader("Expires", 0);//使缓存过期
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {
        System.out.println("过滤器2号结束");
    }
}
