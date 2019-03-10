### 项目展示
![项目展示](https://user-gold-cdn.xitu.io/2019/3/10/16966817a35e70ff?w=517&h=120&f=gif&s=368815)
### 技术难点：
引用MDN解释：`content: attr(data-text);`是CSS中引用的HTML元素的属性名称。
### 实例：
#### HTML
```
p data-foo="hello">world</p>
```
#### CSS
```
[data-foo]::before {
  content: attr(data-foo) " ";
}
```
```
输出 //hello world
```

### 初始样式：基本每个人都会（忽略）
![效果展示1](https://user-gold-cdn.xitu.io/2019/3/10/169668ae7db4a66e?w=585&h=102&f=png&s=10527)
### 第一步：通过CSS3 的transform属性移动文字，样式如下
```
		.box span:nth-child(odd) {
			transform: translateY(-100%);
		}

		.box span:nth-child(even) {
			transform: translateY(100%);
		}
```

![效果展示2](https://user-gold-cdn.xitu.io/2019/3/10/169668e4d7949c10?w=599&h=167&f=png&s=11922)
### 第二步：通过content 的arr属性引用的HTML元素的属性名称
```
        <span data-text="N">N</span>      //html
        .box span::before {
		content: attr(data-text);
		position: absolute;     // 脱离文档流
		color: red;
    }
    	.box span:nth-child(odd)::before {
		transform: translateY(100%);
	}

	.box span:nth-child(even)::before {
		transform: translateY(-100%);
	}
```
![效果展示3](https://user-gold-cdn.xitu.io/2019/3/10/16966a536ac9ed4c?w=586&h=182&f=png&s=20428)
### 第三步：鼠标经过，修改transform属性就行
```
	.box:hover span {
		transform: translateY(0);
	}
```
