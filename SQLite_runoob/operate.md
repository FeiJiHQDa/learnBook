## SQLite 

SQLite 官网 [https://www.sqlite.org/](https://www.sqlite.org/)

SQLite 教程链接 [http://www.runoob.com/sqlite/sqlite-tutorial.html](http://www.runoob.com/sqlite/sqlite-tutorial.html)

## start -> base



```sqlite
创建数据库 : sqlite3 DatabaseName.db (进入sqlite目录)

创建表 :
CREATE TABLE DATABASES.COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

插入:
INSERT INTO DATABASES.COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Paul', 32, 'California', 20000.00 );

进入数据库 : sqlite3 DatabaseName.db
附加数据库 : ATTACH DATABASE 'testDB.db' as 'TEST';
查看数据库目录:  .databases
查看表目录 .table
退出：.quit

select 语句:                  SELECT * FROM COMPANY;
where  语句:                  SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 65000;
Update 语句:                  UPDATE COMPANY SET ADDRESS = 'Texas' WHERE ID = 6;
DELETE 语句:                  DELETE FROM COMPANY WHERE ID = 7;
Like (模糊):                  SELECT * FROM COMPANY WHERE AGE  LIKE '2%';
Glob (大小写敏感, 通配符)子句 :  SELECT * FROM COMPANY WHERE AGE  GLOB '2*';
Limit 子句:                   SELECT * FROM COMPANY LIMIT 3 OFFSET 2;
Order By 语句:                SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC(DESC);
Group By (分组) 语句:          SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME
HAVING 子句允许指定条件来过滤将出现在最终结果中的分组结果。 : SELECT * FROM COMPANY GROUP BY name HAVING count(name) < 2;
Distinct 关键字 :              SELECT DISTINCT name FROM COMPANY;

```

## after -> height
#### SQLite 约束
```sqlite
NOT NULL :    确保某列不能有 NULL 值
DEFAULT :     当某列没有指定值时，为该列提供默认值
UNIQUE :      唯一值
PRIMARY key : 主键
CHECK :       确保某列中的所有值满足一定条件。
```