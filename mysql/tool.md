## Mysql 推荐工具

1. pt-query-digest是用于分析mysql慢查询的一个工具，它可以分析binlog、General log、slowlog，也可以通过SHOWPROCESSLIST或者通过tcpdump抓取的MySQL协议数据来进行分析。
2. common-schema 解决冗余索引 P180
3. Percona Toolkit 中的 pt-duplicate-key-checker 找出冗余 复杂的索引
4. Percona Toolkit  中的 pt-index-usage 可以查询日志 和 索引和查询的报告