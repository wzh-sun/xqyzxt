package com.wzhsun.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 用户登录拦截过滤
 */
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//        System.out.println("过滤器1号开始");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        System.out.println("1号进入执行过滤");
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;

        HttpSession session = servletRequest.getSession();
        // 获得用户请求的URI
        String path = servletRequest.getRequestURI();
        //System.out.println(path);
        // 从session里取员工工号信息
        if(path.indexOf("login")  >-1) {
            chain.doFilter(servletRequest, servletResponse);
            return;
        }

        String username = (String) session.getAttribute("username");

        if (username == null || "".equals(username)) {
            // 跳转到登陆页面
            servletResponse.sendRedirect(servletRequest.getContextPath() + "/login");
        } else {
            // 已经登陆,继续此次请求
            chain.doFilter(request, response);
        }

    }

    @Override
    public void destroy() {
        System.out.println("过滤器1号结束");
    }
}
