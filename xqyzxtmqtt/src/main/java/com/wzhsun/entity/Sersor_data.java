package com.wzhsun.entity;

import java.util.Date;

/**
 * 实体类对象：一张表一个实体类对象，变量名必须跟数据库中的表字段相同
 * 传感器表
 */
public class Sersor_data {
    private int s_d_Id;//传感器数据编号
    private String s_d_data;//传感器数据
    private String s_d_SNum;//传感器编号
    private Date s_d_datetime;//获取数据的实际时间

    public Sersor_data() {
    }

    public Sersor_data(int s_d_Id, String s_d_data, String s_d_SNum) {
        this.s_d_Id = s_d_Id;
        this.s_d_data = s_d_data;
        this.s_d_SNum = s_d_SNum;
    }

    public Sersor_data(int s_d_Id, String s_d_data, String s_d_SNum, Date s_d_datetime) {
        this.s_d_Id = s_d_Id;
        this.s_d_data = s_d_data;
        this.s_d_SNum = s_d_SNum;
        this.s_d_datetime = s_d_datetime;
    }

    public Sersor_data(String s_d_data, String s_d_SNum) {
        this.s_d_data = s_d_data;
        this.s_d_SNum = s_d_SNum;
    }

    public int getS_d_Id() {
        return s_d_Id;
    }

    public void setS_d_Id(int s_d_Id) {
        this.s_d_Id = s_d_Id;
    }

    public String getS_d_data() {
        return s_d_data;
    }

    public void setS_d_data(String s_d_data) {
        this.s_d_data = s_d_data;
    }

    public String getS_d_SNum() {
        return s_d_SNum;
    }

    public void setS_d_SNum(String s_d_SNum) {
        this.s_d_SNum = s_d_SNum;
    }

    public Date getS_d_datetime() {
        return s_d_datetime;
    }

    public void setS_d_datetime(Date s_d_datetime) {
        this.s_d_datetime = s_d_datetime;
    }

    @Override
    public String toString() {
        return "Sersor_data{" +
                "s_d_Id=" + s_d_Id +
                ", s_d_data='" + s_d_data + '\'' +
                ", s_d_SNum='" + s_d_SNum + '\'' +
                ", s_d_datetime=" + s_d_datetime +
                '}';
    }
}
