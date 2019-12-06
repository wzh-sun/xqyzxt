CREATE DATABASE IF NOT EXISTS `mqtt` DEFAULT CHARACTER SET utf8;

use mqtt;

DROP TABLE IF EXISTS `users`;
create table users(
	userId int unsigned auto_increment key comment '用户id',
    userNickName varchar(50) comment '用户昵称',
    userName varchar(30) unique not null comment '用户账号',
    passwd varchar(32) not null comment '用户密码',
    userphone varchar(11) comment '用户电话号码',
    stutas int(1) not null default 1 comment '用户身份',
    userAdd varchar(100) comment '用户地址',
    describes varchar(50) comment ' 用户描述'
)engine=innodb charset=utf8;

insert into users values(null,'汪中华','root1',md5(111111),'18779455583',2,'江西省赣州市江西环境工程职业学院','系统开发师'),
(null,'廖磊鑫','root2',md5(123123),'131********',2,'江西省赣州市江西环境工程职业学院','数据分析师'),
(null,'普通用户1','user1',md5(111111),'110110',1,'江西省赣州市江西环境工程职业学院','测试用户1号');

DROP TABLE IF EXISTS `barton`;
create table barton(
	bartonId int unsigned auto_increment key comment '鸡舍Id',
    bartonName varchar(30) not null unique comment '鸡舍名',
    bartonGroup varchar(100) comment '鸡舍所属组',
    bartonUser varchar(30) comment '鸡舍所有者',
    bartonStutas int(1) comment '操作'
)engine=innodb charset=utf8;

insert into barton values(null,'1号鸡舍','赣州市章贡区**1组','张三',2),
(null,'2号鸡舍','赣州市章贡区**1组','张三',2),
(null,'3号鸡舍','赣州市章贡区**1组','张三',2);

DROP TABLE IF EXISTS `sersor`;
create table sersor(
	sersorId int auto_increment key comment '传感器ID',
    sersorNum varchar(20) unique not null comment '传感器编号',
    sersorName varchar(30) not null comment '传感器名字',
    sersorContent int(1) not null comment '传感器备注'
)engine=innodb charset=utf8;

DROP TABLE IF EXISTS `sersor_data`;
create table sersor_data(
	s_d_Id int auto_increment key comment '数据id',
    s_d_data varchar(30) not null comment '数据内容',
    s_d_SNum varchar(20) not null comment '连接编号外键',
    s_d_datetime datetime not null default CURRENT_TIMESTAMP comment '时间戳'
)engine=innodb charset=utf8;

