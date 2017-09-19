#  异步和性能
# 第一章： 异步与将来

## 1.2 事件轮询（Event Loop)

```js
// `eventLoop`是一个像队列一样的数组（先进先出）
var eventLoop = [];
var event;

// "永远"执行
while(true) {
    if (eventLoop.length > 0) {
        // 在队列中取得下一个事件
        event = eventLoop.shift();

        // 现在执行下一个事件
        try {
            event();
        } catch(err) {
            reportError
        }
    }
}
```