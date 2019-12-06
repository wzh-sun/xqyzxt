package com.wzhsun.thread;

import com.wzhsun.utils.Emq_acc;

public class MyThread extends Thread{

    private Emq_acc emqAcc = new Emq_acc();

    public void run() {

        while (!this.isInterrupted()) {// 线程未中断执行循环

            try {
                Thread.sleep(2000); //每隔2000ms执行一次

            } catch (InterruptedException e) {

                e.printStackTrace();

            }

            System.out.println("交互时间" + System.currentTimeMillis());
            try {
                emqAcc.emqacc("tcp://112.74.164.219:1883","1br/wd/#","23456");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}