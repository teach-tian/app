

### 什么是ajax?

* AJAX 是一种在无需重新加载整个网页的情况下，能够更新部分网页的技术。
* AJAX的全称是Asynchronous JavaScript and XML（异步的 JavaScript 和 XML）。
（注意：Ajax 不是一种新的编程语言，而是一种用于创建更好更快以及交互性更强的Web应用程序的技术。）
### ajax 原理？

![](https://upload-images.jianshu.io/upload_images/12889549-b47e90c3a77e4ae2.gif?imageMogr2/auto-orient/strip)
### ajax的使用及实现步骤
ajax的使用及实现步骤
1. 创建XMLHttpRequest对象
2. 创建一个新的HTTP请求,并指定该HTTP请求的方法、URL及验证信息. 
3. 设置响应HTTP请求状态变化的函数. 
4. 发送HTTP请求. 
5. 获取异步调用返回的数据. 
6. 使用JavaScript和DOM实现局部刷新.

1.创建Ajax核心对象XMLHttpRequest

```
var xmlHttp==new XMLHttpRequest(); //实例化一个XMLHttpRequest
```
 2.向服务器发送请求
 ```
xmlhttp.open(method,url,async);
xmlhttp.send();
//如下实例
var xmlHttp = new XMLHttpRequest();
   xmlHttp.open('get','demo_get.html','true');//调用open()方法并采用异步方式
   xmlHttp.send(); //使用open()方法将请求发送出去
   xmlHttp.onreadystatechange=function(){
        if(xmlHttp.readyState === 4 && xmlHttp.status === 200){

        }
}

 ```
