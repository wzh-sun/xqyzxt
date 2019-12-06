package com.wzhsun.utils;

import com.wzhsun.dao.UsersDao;
import com.wzhsun.entity.Sersor_data;
import com.wzhsun.servlet.BartonFindByIdServlet;
import com.wzhsun.websocket.WebSocketTest;
import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;

public class PushCallback implements MqttCallback {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private WebSocketTest wst = new WebSocketTest();

    public void connectionLost(Throwable cause) {
        // 连接丢失后，一般在这里面进行重连
        System.out.println("连接断开，可以做重连");
        logger.info("掉线时间:{}", new Date());
    }

    public void deliveryComplete(IMqttDeliveryToken token) {
        System.out.println("deliveryComplete---------" + token.isComplete());
    }

    public void messageArrived(String topic, MqttMessage message) throws Exception {
        // subscribe后得到的消息会执行到这里面
        // System.out.println(message);
        System.out.println("接收消息主题 : " + topic);
        String[] topicArray = topic.split("/");
        System.out.println(topicArray[topicArray.length-1]);
        System.out.println(message);
        /*System.out.println("接收消息Qos : " + message.getQos());
        System.out.println("接收消息内容 : " + new String(message.getPayload()));*/
        //将得到的消息推送给前端，并将其勾勒出实时图表
        wst.onMessage(String.valueOf(message),null);

        //实例化对象 将mqtt的消息落库
        Sersor_data sersor_data = new Sersor_data();
        sersor_data.setS_d_data(String.valueOf(message));
        sersor_data.setS_d_SNum(topicArray[topicArray.length-1]);
        UsersDao usersDao = new UsersDao();
        usersDao.addSd(sersor_data);

    }

}


