package com.wzhsun.entity;

public class Barton {
    private Integer bartonId;
    private String bartonName;
    private String bartonGroup;
    private String bartonUser;
    private int bartonStutas;

    public Barton() {
    }

    public Barton(Integer bartonId) {
        this.bartonId = bartonId;
    }

    public Barton(Integer bartonId, String bartonName, String bartonGroup, String bartonUser, int bartonStutas) {
        this.bartonId = bartonId;
        this.bartonName = bartonName;
        this.bartonGroup = bartonGroup;
        this.bartonUser = bartonUser;
        this.bartonStutas = bartonStutas;
    }

    public Integer getBartonId() {
        return bartonId;
    }

    public void setBartonId(Integer bartonId) {
        this.bartonId = bartonId;
    }

    public String getBartonName() {
        return bartonName;
    }

    public void setBartonName(String bartonName) {
        this.bartonName = bartonName;
    }

    public String getBartonGroup() {
        return bartonGroup;
    }

    public void setBartonGroup(String bartonGroup) {
        this.bartonGroup = bartonGroup;
    }

    public String getBartonUser() {
        return bartonUser;
    }

    public void setBartonUser(String bartonUser) {
        this.bartonUser = bartonUser;
    }

    public int getBartonStutas() {
        return bartonStutas;
    }

    public void setBartonStutas(int bartonStutas) {
        this.bartonStutas = bartonStutas;
    }

    @Override
    public String toString() {
        return "Barton{" +
                "bartonId=" + bartonId +
                ", bartonName='" + bartonName + '\'' +
                ", bartonGroup='" + bartonGroup + '\'' +
                ", bartonUser='" + bartonUser + '\'' +
                ", bartonStutas=" + bartonStutas +
                '}';
    }
}
