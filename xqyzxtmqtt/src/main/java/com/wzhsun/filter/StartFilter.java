package com.wzhsun.filter;

import javax.servlet.*;
import java.io.IOException;
import java.net.UnknownHostException;

import com.wzhsun.websocket.WsServer;
import org.java_websocket.WebSocketImpl;

/**
 * 监听websocket开启 服务
 */
public class StartFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("开启webSocket服务");
        this.startWebsocketInstantMsg();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    }

    @Override
    public void destroy() {

    }

    /**
     * 启动即时聊天服务
     */
    public void startWebsocketInstantMsg() {
        WebSocketImpl.DEBUG = false;
        WsServer s;
        s = new WsServer(8887);
        s.start();
    }

}
