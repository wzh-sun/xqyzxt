package com.wzhsun.servlet;

import com.wzhsun.dao.UsersDao;
import com.wzhsun.entity.Barton;
import com.wzhsun.websocket.WebSocketTest;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/bartonId")
public class BartonFindByIdServlet extends HttpServlet {

    /**
     * 创建日志纪录对象
     */
    private Logger log = Logger.getLogger(BartonFindByIdServlet.class);
    private UsersDao usersDao = new UsersDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bartonId = req.getParameter("bartonId");
        log.info("获取到查询的参数id -->" + bartonId);

        Barton barton = usersDao.findByBartonId(Integer.parseInt(bartonId));

        log.info("查询数据完成 数据为：" + barton);

        req.getSession().setAttribute("barton",barton);
        req.getSession().setAttribute("bartonIds",barton.getBartonId());
        req.getRequestDispatcher("barton.jsp").forward(req,resp);

    }
}
