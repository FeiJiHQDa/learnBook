
# 基础操作

进入数据库 :   `mysql -h localhost -u root --port=3306 -p  包含端口号`

#### 查看系列

```sql
查看表目录 : show tables;
查看数据库列表： show databases;    
进入数据库: use <database>;    
查看表的内容：describe  <name>
```

### 修改系列
1. 第一类
```sql
创建数据库:     
CREATE DATABASE IF NOT EXISTS <database> DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;     
            可选 utf8_general_ci || utf8mb4_general_ci || utf8mb4_unicode_ci

创建表:     
CREATE TABLE  IF NOT EXISTS `<table>` (  
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',      
    `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',      
    `password` char(16) NOT NULL,       
    PRIMARY KEY (`id`)     
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=1; 

插入数据:     
insert into `<table>` values (NULL, 'whchao', 'whchao');     
insert into `<table>` (`id`, `username`, `password`) values (NULL, 'whchao', 'whchao');     
insert into `<table>` (`id`, `username`, `password`) values (NULL, 'whchao', 'whchao'),                                                             (NULL, 'whchao1', 'whchao1'); ;

```
### 第二类
```sql
 

```

### 更新系列：     
```sql
不删除字段，只更新其中的内容： 
update 表 set <fields> = null    
 自增 
 update <table> set <fields> = <fields> + 1

修改表名 : ALTER  TABLE table_name RENAME TO new_table_name
修改 表引擎: ALTER TABLE table_name ENGINE = InnDB;
修改表注释: ALTER TABLE base_excel COMMENT '导入excel记录表';

移动列的顺序 :
ALTER TABLE table_name modify `字段名 字段类型` after `字段`
ALTER TABLE user_info modify user_id char(8) first;//将user_id移到最前面！！
```

### 删除系列
```sql
删除表的数据                        delete from <table>;     
删除表的指定数据                    delete from <table> where id = ?;     
删除表清除 AUTO_INCREMENT值和数据   truncate table <table>     
删除表                             drop table <table>     
删除数据库                         drop database <database>     
删除表字段:                        ALTER TABLE student DROP sex; :
```
#### 查看数据库状态
```sql
最大链接数: show variables like 'max_connections'; 
查看当前执行数 show processlist; 
显示当前状态 show status;

```

### Mysql授权远程访问

```sql
赋予任何主机访问数据的权限 : mysql>GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'WITH GRANT OPTION
myuser使用mypassword任何主机连接到mysql服务器 : GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%'IDENTIFIED BY 'mypassword' WITH GRANT OPTION;
myuser从ip为192.168.1.6 : GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'192.168.1.3'IDENTIFIED BY 'mypassword' WITH GRANT OPTION;
```

### 开启事物
```sql
begin; 
start transaction;
commit;
rollback;
```

### 排序数据
```sql

 SELECT * FROM table_name where field_name = ? AND // OR field_name IN(?, ?) ORDER BY field_name ASC(upload) && DESC(downlaod)
SELECT * FROM table_name

````