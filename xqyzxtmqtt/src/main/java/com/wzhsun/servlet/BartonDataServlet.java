package com.wzhsun.servlet;

import com.wzhsun.dao.UsersDao;
import com.wzhsun.entity.Sersor_data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/barton")
public class BartonDataServlet extends HttpServlet {

    private UsersDao usersDao = new UsersDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("进入鸡舍");
        List<Sersor_data> listSd = usersDao.findData();
        List list1 = new ArrayList();
        System.out.println(listSd);
        for (int i =0;i<listSd.size();i++){
            Sersor_data temp = listSd.get(i);
            System.out.println(temp);
            list1.add(temp.getS_d_data());
//            req.getSession().setAttribute("wendudata",temp.getS_d_data());
//            req.getRequestDispatcher("barton.jsp").forward(req,resp);
        }
        System.out.println(list1);
        req.getSession().setAttribute("sdlist",list1);
        req.getRequestDispatcher("barton.jsp").forward(req,resp);
    }
}
