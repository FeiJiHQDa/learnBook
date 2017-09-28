# 复制

## 复制解决的问题
1. 数据分布 : 5.1 > 行复制， 和 语句复制
2. 负载均衡 ： DNS 轮询
3. 备份
4. 高可用性和故障切换
5. MySQL 升级测试

## 如何复制
 主库 二进制日志(Binary Log) --- 备库 复制 主库到自己的中继日志 --- 备库读取中继日志中的事件，重放到备库数据上 


 ## 创建 复制账号
 ```sql
 mysql > GRANT REPLICATION SLAVE, REPLICATION, CLIENT ON *.* to repl@'192.168.0.%' IDENTIFIED BY 'p4ssword',;



 ``` 