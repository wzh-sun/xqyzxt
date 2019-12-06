package com.wzhsun.servlet;

import com.wzhsun.dao.UsersDao;
import com.wzhsun.entity.Barton;
import com.wzhsun.entity.Users;
import com.wzhsun.utils.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 用户登录功能实现
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private UsersDao usersDao = new UsersDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");//获取用户名输入框输入数据
        String password = Md5Util.getPwd(req.getParameter("password"));//获取密码并加密处理
//        System.out.println(password);

        List<Users> list = usersDao.findLogin();//得到用户表数据中的全部数据
        List<Barton> bartonList = usersDao.findAllBarton();//得到鸡舍信息表中的全部数据
        req.getSession().setAttribute("bartonList",bartonList);//将鸡舍信息显示加载进session中
        req.getSession().setAttribute("userList",list);//将用户表的信息放进session中
//        System.out.println(bartonList);
//        System.out.println("集合" + list);
//        req.setAttribute("userList",list);
        for (int i =0;i<list.size();i++){ //遍历用户信息
            /*System.out.println(list.size());*/
            Users tem = list.get(i);//得到所有用户表中的数据
//            System.out.println(tem);
            if (username.equals(tem.getUserName()) && password.equals(tem.getPasswd())){//比较用户名和密码是否一致
                req.getSession().setAttribute("username",username);//将用户名加载进session中
                req.getSession().setAttribute("userNickName",tem.getUserNickName());//将用户姓名加进去
                req.getSession().setAttribute("userphone",tem.getUserphone());//将用户电话号码加进去
                req.getSession().setAttribute("stutas",tem.getStutas());//将用户身份加进去
                req.getSession().setAttribute("userAdd",tem.getUserAdd());//将用户地址加进去
                req.getSession().setAttribute("describes",tem.getDescribes());//将用户说明加进去

//                System.out.println("用户身份--"+tem.getStutas());

                req.getRequestDispatcher("index.jsp").  forward(req,resp);//如果信息正确就跳转
                return;//正确就返回 一定得添加
            }
        }
        req.getRequestDispatcher("failure.jsp").forward(req,resp);//不正确就跳转失败页面

    }
}
