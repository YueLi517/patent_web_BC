<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.List"%>
<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +request.getServerPort() + path + "/";
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
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jQuery1.7.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script charset="gb2312" type="text/javascript" src="js/login.js"language="javascript" ></script>

<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
  *{
      padding: 0 ;
      margin: 0 ;
  }
  html{
      overflow: hidden
  }

  </style>
  <style>
  v\:* { BEHAVIOR: url(#default#VML) }
  </style>
  <script type="text/javascript">
$(document).ready(function(){
	var $tab_li = $('#tab ul li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});	
});
</script>
    <SCRIPT type="text/javascript">
    $($('.login-box').click(
            function () {
                if (!$(this).hasClass('active')) {
                    $(this).toggleClass('active');
                    setTimeout(
                        () => {
                            $(this).addClass('verity');
                        }, 2000
                    )
                }
            }
        ))
    window.onload=function(){
      onload1();
      onload2();
    }

    function onload2()
            {
              var oLogin = document.getElementById('login');
                var oLoginBox = document.getElementById('login-box');
                var oOver = document.getElementById('over');
                var oClose = document.getElementById('close');
                var oUserName = document.getElementById('username');
                var oPasswd = document.getElementById('passwd');
                oLogin.onclick = function ()
                {
                    oLoginBox.style.display = 'block';
                    oOver.style.display = 'block';
                    oLoginBox.style.zIndex = 1;  //设置元素的显示优先层级，zIndex越高,优先级越高，通俗点就是往上覆盖.
                };
                oClose.onclick = function ()
                {
                    oLoginBox.style.display = 'none';
                    oOver.style.display = 'none';
                };
                oUserName.onclick = function ()
                {
                    oUserName.value='';   //清除提示文字
                };
                oPasswd.onfocus = function ()
                {
                    oPasswd.value='';   //清除提示文字
                    oPasswd.type = 'password'; //把文本框类型设为密码
                }
    
            }

    </SCRIPT>
  <script type="text/javascript">
$(document).ready(function(){
	var $tab_li = $('#tab ul li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});	
});
indow.onload = function ()
{
    var oLogin = document.getElementById('login');
    var oLoginBox = document.getElementById('login-box');
    var oOver = document.getElementById('over');
    var oClose = document.getElementById('close');
    var oUserName = document.getElementById('username');
    var oPasswd = document.getElementById('passwd');
    oLogin.onclick = function ()
    {
        oLoginBox.style.display = 'block';
        oOver.style.display = 'block';
        oLoginBox.style.zIndex = 1;  //设置元素的显示优先层级，zIndex越高,优先级越高，通俗点就是往上覆盖.
    };
    oClose.onclick = function ()
    {
        oLoginBox.style.display = 'none';
        oOver.style.display = 'none';
    };
    oUserName.onclick = function ()
    {
        oUserName.value='';   //清除提示文字
    };
    oPasswd.onfocus = function ()
    {
        oPasswd.value='';   //清除提示文字
        oPasswd.type = 'password'; //把文本框类型设为密码
    }


}
</script>

<script type="text/javascript">
function myFunction() {
	    var txt;
	    if (confirm("确认提交？")) {
	    txt = "您按了确定";
	    window.location.href = "NewFile.jsp"
	    } else {
	    txt = "您按了取消";
	    }
	    document.getElementById("demo").innerHTML = txt;
	    }
</script>
</head>
<body>
    <canvas id="a" style="background: #111;z-index: -2;position: absolute;"></canvas>

    <div id="tab">
        <ul class="tab_menu">
          <li class="selected">用户登录</li>
          <li>后台登录</li>
        </ul>
        <div class="tab_box"> 
          <!-- 用户登录开始 -->
          <div>
            <div class="stu_error_box"></div>
            <form  action="check/loginCh2.jsp" method="post" class="stu_login_error">
              <div id="username">
                <label>用户名：</label>
                <input type="text" id="stu_username_hide" name="username1" placeholder="输入手机号" nullmsg="用户名不能为空！" />
                <!--ajaxurl="demo/valid.jsp"--> 
              </div>
              <div id="password">
                <label>密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
                <input type="password" id="stu_password_hide" name="password1" placeholder="请输入密码" nullmsg="密码不能为空！" />
              </div>
              <div id="code">
                <label>验证码：</label>
                <input type="text" id="stu_code_hide" name="code"  placeholder="输入验证码" nullmsg="验证码不能为空！" />
                <input type="text" onclick="createCode()" readonly="readonly" id="checkCode" class="unchanged" name="checkcode" style="width: 80px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:red;font-size: 100%;"" /> </div>
              <div id="remember">
                <input type="checkbox" name="remember">
                <label>记住密码</label>
              </div>
              <div id="login1">
                  <a href="zhuce.jsp"><button id="login" type="button" >&nbsp;注册</button></a>&nbsp;&nbsp;&nbsp;
                  <button type="submit"onclick="validate();">&nbsp;登录</button>
              </div>
      
            </form>
          </div>
         <!-- 用户登录结束-->
         <!-- 后台登录开始-->
          <div class="hide">
           <div class="tea_error_box"></div>
            <form action="check/loginCh.jsp" method="post" class="tea_login_error"onsubmit="return enter()">
              <div id="username">
                  <label>账&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
                <input type="text" id="tea_username_hide" name="username" placeholder="请输入账号" nullmsg="账号不能为空！" />
                <!--ajaxurl="demo/valid.jsp"--> 
              </div>
              <div id="password">
                <label>密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
                <input type="password" id="tea_password_hide" name="password" placeholder="请输入密码" nullmsg="密码不能为空！" />
              </div>
               <div id="code">
                <label>验证码：</label>
                <input type="text" id="tea_code_hide" name="code1" placeholder="输入验证码" nullmsg="验证码不能为空！" />
                <input type="text" onclick="createCode1()" readonly="readonly" id="checkCode1" class="unchanged" name="checkcode1" style="width: 80px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;color:red;font-size: 100%;"" /> </div>
              <div id="remember">
                <input type="checkbox" name="remember">
                <label>记住密码</label>
              </div>

              <div id="login1">
                <button type="submit"onclick="validate1();"style="width:90%">&nbsp;登录</button>
              </div>
            </form>
          </div>
           <!-- 后台登录结束-->
        </div>
      </div>
      <div class="bottom">专利申请授权管理系统&nbsp;&nbsp;<a href="mailto:760375175@qq.com?">联系我们
          </a>
          </div>
      <div class="screenbg">
          <ul>
            <li><a href="javascript:;"><img src="images/1.jpg" style="width:100%"></a></li>
          </ul>
        </div>
     
</body>
</html>
