package com.wzhsun.dao;

import com.wzhsun.entity.Barton;
import com.wzhsun.entity.Sersor_data;
import com.wzhsun.entity.Users;
import com.wzhsun.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * 数据层：处理访问数据库的请求
 */
public class UsersDao {
    private SqlSession sqlSession;
    private List<Users> list;
    private Users users;
    private List<Sersor_data> listSd;
    private Sersor_data sersor_data;
    private List<Barton> bartonlist;
    private Barton barton;

    private SqlSession getSession(){
        sqlSession = SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
        return sqlSession;
    }

    /**
     *查询登录用户
     */
    public List<Users> findLogin(){
        try{
            list = getSession().selectList("findLogin");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return list;
    }

    /**
     * 根据用户id查询用户信息
     */

    public Users findByUserId(int userId){
        try{
            users = getSession().selectOne("findLogin",new Users(userId));
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return users;
    }

    /**
     * 添加数据进数据库
     */
    public Sersor_data addSd(Sersor_data sersor_data){
        try{
            getSession().insert("addSd",sersor_data);

            sqlSession.commit();

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return sersor_data;
    }

    /**
     * 查看鸡舍数据库信息
     */

    public List<Barton> findAllBarton(){
        try {
            bartonlist =  getSession().selectList("findAllBarton");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return bartonlist;
    }

    /**
     * 根据id查询鸡舍
     */

    public Barton findByBartonId(Integer bartonId){
        try{
            barton = getSession().selectOne("findAllBarton",new Barton(bartonId));
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return barton;
    }

    /**
     * 查询最新一条数据
     */
    public List<Sersor_data> findData(){
        try{
            listSd = getSession().selectList("findData");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return listSd;
    }


}
