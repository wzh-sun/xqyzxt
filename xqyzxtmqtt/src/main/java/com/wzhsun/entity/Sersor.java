package com.wzhsun.entity;

public class Sersor {
    private int sersorId;
    private String sersorNum;
    private String sersorName;
    private int sersorContent;

    public Sersor() {
    }

    public Sersor(int sersorId, String sersorNum, String sersorName, int sersorContent){
        this.sersorId = sersorId;
        this.sersorNum = sersorNum;
        this.sersorName = sersorName;
        this.sersorContent = sersorContent;
    }

    public int getSersorId() {
        return sersorId;
    }

    public void setSersorId(int sersorId) {
        this.sersorId = sersorId;
    }

    public String getSersorNum() {
        return sersorNum;
    }

    public void setSersorNum(String sersorNum) {
        this.sersorNum = sersorNum;
    }

    public String getSersorName() {
        return sersorName;
    }

    public void setSersorName(String sersorName) {
        this.sersorName = sersorName;
    }

    public int getSersorContent() {
        return sersorContent;
    }

    public void setSersorContent(int sersorContent) {
        this.sersorContent = sersorContent;
    }
}
