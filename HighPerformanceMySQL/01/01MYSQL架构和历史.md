## mysql 逻辑架构图
![mysql 逻辑架构图](01_1.png)

## 1.2 并发控制

* 共享锁(读锁) 互不阻塞 。 排他锁(写锁) 会阻塞其他的 写锁 和读锁
* 表锁(table lock)  0_0 尽管存储引擎可以管理自己锁，MySQL 还会使用各种有效的表锁, 如 ALTER TABLE 之类的表锁，忽略存储引擎的锁机制
* 行级锁 (row lock) InnoDB 和 XtraDB,及其他一些存储引擎实现了行级锁

## 1.3 事物

开启事物 
```mysql
START TRANSACTION; && begin; 
COMMIT;
ROLLBACK;   -- 回退
```

* 原子性(atomicity)
* 一致性(consistency)
* 隔离性(isolation)
* 持久性(durability)

### 隔离级别

* READ uncommitted (未提交读)
    * 事物的修改，即使没有提交，对其他事物也都是可见的
* read committed (提交读)
    * 一个事物开始直到提交前， 所做的任何修改对其他事物都是不可见的，这级别也叫 ``不可重复读(nonrepeatable read)``
* repeatble read (可重复读)
    * InnoDB 和 XtraDB 通过多版本并发控制(MVCC, Multiversion Concurrency Control) 解决幻读问题
* serializable (可串行化)

### 死锁

例如:
```mysql
-- 事物 1
START TRANSACTION
update stockPrice SET close = 45.05 where stock_id = 4 and data = '2002-5-1';
update stockPrice SET close = 15.05 where stock_id = 3 and data = '2002-5-02';
COMMIT

-- 事物 2
START TRANSACTION
update stockPrice SET close = 15.05 where stock_id = 3 and data = '2002-5-02';
update stockPrice SET close = 45.05 where stock_id = 4 and data = '2002-5-1';
COMMIT

```
InnoDB 目前处理死锁的方法是， 将持有最少行级的排他锁的事物进行回滚 ( 这是相对比较简单的死锁回滚算法 )

