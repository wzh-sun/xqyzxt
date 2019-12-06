package com.wzhsun.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 用户密码 md5加密工具类
 */
public class Md5Util {

    public static String getPwd(String pwd){
        //创建加密
        try {
            //指定加密方式
            System.out.println("开始加密处理");
            MessageDigest digest = MessageDigest.getInstance("md5");

            byte[] bs = digest.digest(pwd.getBytes());
            //接下来，对加密后的结果进行优化
            String hexString = "";
            for (byte b :bs){
                //将数据全部转换为正数
                int temp = b & 255;
                //将所有数据转换成16进制的形式
                // 注意：转换的时候注意if正数>=0&&<16，那么如果使用Integer.toHexString()，可能会造成缺少位数
                //因此需要对temp进行判断
                if (temp <16 && temp >= 0){
                    //手动补上一个0
                    hexString = hexString + "0" + Integer.toHexString(temp);

                }else {
                    hexString = hexString + Integer.toHexString(temp);
                }
            }
            return hexString;

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }
}
