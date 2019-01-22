# 弹性盒的设定
### 任何一个容器都可以指定为 Flex 布局。
```
.box{
  display: flex;
}
```
### 行内元素也可以使用 Flex 布局。
```
.box{
  display: inline-flex;
}
```
### Webkit 内核的浏览器，必须加上-webkit前缀。
```
.box{
  display: -webkit-flex; /* Safari */
  display: flex;
}
```

### 注意，设为 Flex 布局以后，子元素的float、clear和vertical-align属性将失效。

# 容器的属性
```
flex-direction (决定项目排列方向)
.box {
  flex-direction: row（默认）| column ;
}
flex-wrap
flex-flow
justify-content
align-items
align-content

```
