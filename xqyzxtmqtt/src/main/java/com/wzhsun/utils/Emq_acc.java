package com.wzhsun.utils;

import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

public class Emq_acc {

    public void emqacc(String host,String topic,String clientId) throws Exception {

        /*String host = "tcp://112.74.164.219:1883";
        String topic = "z/x/c";
        String clientId = "12346";// clientId不能重复*/

        // 1.设置mqtt连接属性
        MqttConnectOptions options = new MqttConnectOptions();
        options.setCleanSession(true);
        // 2.实例化mqtt客户端
        MqttClient client = new MqttClient(host, clientId);
        // 3.连接
        client.connect(options);
        System.out.println("已连接");
        client.setCallback(new PushCallback());
        while (true) {
            client.subscribe(topic, 2);
        }
        // client.disconnect();
    }
}
