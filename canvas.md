# canvas
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
  
</head>
<body>
 <canvas id='box' width="300px" height="600px" style="border:1px solid black"></canvas>
</body>
</html>
<script>
//第一步 获取canvas画布
var c=document.getElementById('box');
//第二步 创建context对象
var ctx=c.getContext('2d');

//设置颜色
ctx.fillStyle='#f00';
//fillRect(x,y,width,height) 方法定义了矩形当前的填充方式。横坐标，纵坐标，宽，高
ctx.fillRect(0,0,200,10);

//画线

//moveTo(x,y) 定义线条开始坐标
ctx.moveTo(0,100);
//lineTo(x,y) 定义线条结束坐标
ctx.lineTo(100,100);
// stroke() 绘制线条:
ctx.stroke();


//画圆
//开启一个圆
ctx.beginPath();
//设定一个圆
ctx.arc(100,200,50,0,2*Math.PI);
//绘制
ctx.stroke();

//文本

ctx.font='60px 微软雅黑';//定义字体 大小  字体类型
ctx.fillStyle='#000';//设置颜色

ctx.fillText('hello world',0,150);//fillText(text,x,y) - 在 canvas 上绘制实心的文本
ctx.strokeText('hello world',0,200);//strokeText(text,x,y) - 在 canvas 上绘制空心的文本

//Canvas - 渐变
//渐变可以填充在矩形, 圆形, 线条, 文本等等, 各种形状可以自己定义不同的颜色
//createLinearGradient(x,y,x1,y1) - 创建线条渐变
//createRadialGradient(x,y,r,x1,y1,r1) - 创建一个径向/圆渐变
//当我们使用渐变对象，必须使用两种或两种以上的停止颜色。
//addColorStop()方法指定颜色停止，参数使用坐标来描述，可以是0至1.
//使用渐变，设置fillStyle或strokeStyle的值为 渐变，然后绘制形状，如矩形，文本，或一条线。


//创建一个线性渐变。使用渐变填充矩形:
// 创建渐变对象
var grd=ctx.createLinearGradient(0,0,200,0);
//给渐变对象加渐变终止色
grd.addColorStop(0,"red");
grd.addColorStop(0.5,"blue");
grd.addColorStop(1,"yellow");
 
// 填充渐变
ctx.fillStyle=grd;
//绘制矩形
ctx.fillRect(10,400,150,80);

//创建一个径向/圆渐变。使用渐变填充矩形：
// 创建渐变
var grd=ctx.createRadialGradient(75,50,5,90,60,100);
grd.addColorStop(0,"red");
grd.addColorStop(1,"white");
 
// 填充渐变
ctx.fillStyle=grd;
ctx.fillRect(10,10,150,80);



//把一幅图像放置到画布上  drawImage(image,x,y)  image：获取到的图片   x:横坐标  y:纵坐标
// <img id="scream" src="img_the_scream.jpg" alt="The Scream" width="220" height="277">
var img=document.getElementById("scream");
img.onload = function() {
ctx.drawImage(img,10,10);
}
</script>
```
