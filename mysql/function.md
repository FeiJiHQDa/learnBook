# mysql 查询方法

```sql

蠕虫复制 : insert into 表名[(字段列表)] select  */字段列表 from 数据库名.表名 INSERT INTO test_table(`pid`) select `pid` from test.test_table;

mysql 分组后取每个组内最新的一条数据（组内排序以及limit）:
1) select * from (select * from <table_name> order by <filed_name> desc) AS a group by a.<filed_name>;
2) select * from <table>  where in (select max (<filed>) from <table> group by) and ...

```

