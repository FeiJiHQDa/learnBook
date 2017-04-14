
-- 汇总表 计算前 23小时的计数
create table msg_per_hr (
    hr DATTIME NOT NULL,
    cnt INT unsigned not NULL,
    primary key
);

SELECT SUM(cnt) FROM msg_per_hr where hr BETWEEN 
CONCAT(LEFT(NEW(), 14), '00:00') - INTERVAL 23 HOUR
AND CONCAT(LEFT(NEW(), 14), '00:00') - INTERVAL 1 HOUR;

---计数表
create table hit_count(
    cnt int unsigned not NULL
) engine=innodb

update hit_count set cnt=cnt+1;  -- 这回产生表锁

-- 第二中方式 预先 增加 100 条数据
create table hit_count(
    slot tinyint unsigned not null primary key,
    cnt int unsigned not NULL
) engine=innodb

update hit_count set cnt=cnt+1 where slot = RAND() * 100;

