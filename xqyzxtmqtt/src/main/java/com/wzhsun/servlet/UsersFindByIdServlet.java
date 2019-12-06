package com.wzhsun.servlet;

import com.wzhsun.dao.UsersDao;
import com.wzhsun.entity.Users;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/check")
public class UsersFindByIdServlet extends HttpServlet {

    private Logger log = Logger.getLogger(UsersFindByIdServlet.class);
    private UsersDao usersDao = new UsersDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        log.info("查看到的用户名id是 -->" + userId);

        Users users = usersDao.findByUserId(Integer.parseInt(userId));

        log.info("查询到的数据为-->" + users);
        req.getSession().setAttribute("users",users);//id查询后的用户信息
        req.getSession().setAttribute("idUserId",users.getUserId());//获取ID后的用户id
        req.getSession().setAttribute("idUserStutas",users.getStutas());//获取ID后的用户身份信息
        req.getSession().setAttribute("idUserNickName",users.getUserNickName());//获取ID后的用户昵称
        req.getSession().setAttribute("idUserPhone",users.getUserphone());//获取ID后的电话号码
        req.getSession().setAttribute("idUserAdd",users.getUserAdd());//获取ID后的用户地址
        req.getRequestDispatcher("check.jsp").forward(req,resp);

    }
}
