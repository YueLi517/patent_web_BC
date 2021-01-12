<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.List"%>
<%@ page language="java" contentType="text/html; charset=GB2312"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:v="urn:schemas-microsoft-com:vml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>专利申请授权查询系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jQuery1.7.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script charset="gb2312" type="text/javascript" src="js/login.js"
	language="javascript"></script>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

html {
	overflow: hidden
}
</style>
<style>
v\:* {
	BEHAVIOR: url(#default#VML)
}
</style>
<style>
@
keyframes fadein { 0%{
	opacity: 0;
}

100%{
opacity
:
 
1;
}
}
@
-webkit-keyframes fadein { 0%{
	opacity: 0;
}

100%{
opacity
:
 
1;
}
}
@
-moz-keyframes fadein { 0%{
	opacity: 0;
}

100%{
opacity
:
 
1;
}
}
@
-o-keyframes fadein { 0%{
	opacity: 0;
}

100%{
opacity
:
 
1;
}
}
@
-ms-keyframes fadein { 0%{
	opacity: 0;
}

100%{
opacity
:
 
1;
}
}
body {
	animation: fadein 5s linear 1;
	-webkit-animation: fadein 5s linear 1;
	-moz-animation: fadein 5s linear 1;
	-o-animation: fadein 5s linear 1;
	-ms-animation: fadein 5s linear 1;
}
</style>
<style>
music_ctrl {
	background: url("img/music.jpg");
	background-size: 30px 30px;
	width: 30px;
	height: 30px;
	position: absolute;
	top: 15px;
	right: 15px;
	border: 0px solid #cccccc;
	border-radius: 50%;
	/*animation: playing infinite linear 2s;*/
}

@keyframes playing {from { transform:rotate(0deg);
	
}

to {
	transform: rotate(360deg);
}
}
.btn1{
width:0px;
border:0px;
}
</style>
</head>
<body>
	<canvas id="a" style="background: #111;z-index: -2;position: absolute;"></canvas>

	<div class="container">
		<div class="jumbotron">
			<div>
			   <audio src="star.mp3" controls="controls" preload id="music"   hidden> </audio>

				<h1 style="font-family: KaiTi">欢迎进入专利申请授权系统 
				  <button class="btn1" onclick="a1();"><music_ctrl></music_ctrl></button></h1>
			</div>
			<br />
			<div>这是一个可以提交专利申请、查询专利状况的网页</div>
			<br /> <br />
			<div>
				<p>
					<a class="btn btn-primary btn-lg" role="button" href="loading1.jsp">
						点击登录</a>
				</p>
			</div>
		</div>
	</div>


	<div class="bottom">
		专利申请授权管理系统&nbsp;&nbsp;<a href="mailto:760375175@qq.com?">联系我们 </a>	
	</div>
	<div class="screenbg">
		<ul>
			<li><a href="javascript:;"><img src="images/1.jpg"
					style="width: 100%"></a></li>
		</ul>
	</div>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script>
function a1(){
    var audio = document.getElementById('music'); 
    var music_ctrl=document.querySelector('music_ctrl');
    if(audio.paused){                 
        audio.play();//audio.play();// 播放 
        music_ctrl.style.animation = 'playing infinite linear 2s';
    }
    else{
         audio.pause();
         music_ctrl.style.animation = 'none';
    } 
  }
</script>
</body>
</html>
