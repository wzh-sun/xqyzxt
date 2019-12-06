package com.wzhsun.entity;

/**
 * 用户表数据
 */
public class Users {

    private int userId; //用户id编号
    private String userNickName;//用户昵称
    private String userName;//用户名
    private String passwd;//用户密码
    private String userphone;//用户电话号码
    private int stutas;//用户身份信息
    private String userAdd;//用户地址
    private String describes;//用户描述

    public Users() {
    }

    public Users(int userId) {
        this.userId = userId;
    }

    public Users(String userName, String passwd) {
        this.userName = userName;
        this.passwd = passwd;
    }

    public Users(int userId, String userNickName, String userName, String passwd) {
        this.userId = userId;
        this.userNickName = userNickName;
        this.userName = userName;
        this.passwd = passwd;
    }

    public Users(int userId, String userNickName, String userName, String passwd, String userphone, int stutas, String userAdd, String describes) {
        this.userId = userId;
        this.userNickName = userNickName;
        this.userName = userName;
        this.passwd = passwd;
        this.userphone = userphone;
        this.stutas = stutas;
        this.userAdd = userAdd;
        this.describes = describes;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserNickName() {
        return userNickName;
    }

    public void setUserNickName(String userNickName) {
        this.userNickName = userNickName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public int getStutas() {
        return stutas;
    }

    public void setStutas(int stutas) {
        this.stutas = stutas;
    }

    public String getUserAdd() {
        return userAdd;
    }

    public void setUserAdd(String userAdd) {
        this.userAdd = userAdd;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", userNickName='" + userNickName + '\'' +
                ", userName='" + userName + '\'' +
                ", passwd='" + passwd + '\'' +
                ", userphone='" + userphone + '\'' +
                ", stutas=" + stutas +
                ", userAdd='" + userAdd + '\'' +
                ", describes='" + describes + '\'' +
                '}';
    }
}
