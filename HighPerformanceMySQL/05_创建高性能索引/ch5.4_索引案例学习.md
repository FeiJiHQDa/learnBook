# 索引案例学习

### 支持多种过滤条件

```sql 

-- 优化器 会转换成  3 * 4 * 2 = 24 种组合， 要避免
WHERE eye_color IN('brown', 'blue', 'hazel')
    AND hair_colr IN ('black', 'red', 'blonde', 'brown')
    AND sex     IN ('M', "F")
```