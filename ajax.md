

### 什么是ajax?

* AJAX 是一种在无需重新加载整个网页的情况下，能够更新部分网页的技术。
* AJAX的全称是Asynchronous JavaScript and XML（异步的 JavaScript 和 XML）。
*（注意：Ajax 不是一种新的编程语言，而是一种用于创建更好更快以及交互性更强的Web应用程序的技术。）
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

xmlhttp.send(null);
//如下实例
var xmlHttp = new XMLHttpRequest(); //第一步 创建XMLHttpRequet对象
   xmlHttp.open('get','demo_get.html','true');// 第二步: 调用 open(type,url,async)方法,  参数1：请求类型（get,post）;参数2：url   参数3：是否异步(true:异步，false:同步）
   xmlHttp.send();  // 第三步：调用send()方法  1个参数：作为请求主体发送的数据  ,   如果不需要，则必须传入null。
   xmlHttp.onreadystatechange=function(){  //第四步：监听onreadystatechange事件，每次服务器相应数据都会触发该事件
        if(xmlHttp.readyState === 4 && xmlHttp.status === 200){
         //xhr.status 响应的HTTP状态码
         console.log(xhr.responseText);//responseText()     作为响应主体被返回的文本
        }
}

 ```
