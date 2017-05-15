


#### Mysql授权远程访问

```mysql
赋予任何主机访问数据的权限 : mysql>GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'WITH GRANT OPTION
myuser使用mypassword任何主机连接到mysql服务器 : GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%'IDENTIFIED BY 'mypassword' WITH GRANT OPTION;
myuser从ip为192.168.1.6 : GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'192.168.1.3'IDENTIFIED BY 'mypassword' WITH GRANT OPTION;
```