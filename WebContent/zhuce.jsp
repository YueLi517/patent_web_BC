<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'Feilong_register.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
          /*登陆框*/
        #login-box{display:none;width:30%;height: 100%;background: #cfe7fd;position: absolute;left: 80%;
            top:25%;margin-left: -175px;margin-top: -150px;font-family: STKati;}/*居中*/
        #login-box label{display: block;font-size:25px;margin: 20px 20px 0 20px;}
        #login-box label input{width:90%;height:30px;color: #050505;font-family: STKati;}
        #login-box #btn{width:100%;height: 45px;margin:10px 0 0 107px;}
        #login-box #btn button{width:35%;height: 100%;left: 7%;}
        #close{font-size:30px;position: absolute;top:0;right: 5px;cursor: pointer;color:gray;}
        /*登陆框结束*/
        #over{position:absolute;left:0;top:0;width:100%;height:100%;background: rgb(0, 0, 0);opacity: 0.5;display: none;}
        #submit{width:80%;height: 600px;background: #fdfdfd38;position: absolute;left: 10%;
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
  <body>
  <canvas id="a" style="background: #111;z-index: -2;position: absolute;"></canvas>
  
      <div id="tab">
        <ul class="tab_menu">
          <li >用户注册</li>

        </ul>
        <div class="tab_box"> 

         <!-- 注册开始-->
           
           	<form action = "check/checkRegister.jsp" method = "post" >
<br/>
                  <label>用&nbsp;户&nbsp;名：</label>
                <input type="text" name="username" placeholder="输入11位手机号码" maxlength = "16" onfocus = "if(this.placeholderplaceholder == '输入11位手机号码') this.value =''">
                <br/><br/><label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
                <input type="password" name="password" placeholder="输入20个字符以内" maxlength = "20" onfocus = "if(this.placeholder == '输入20个字符以内') this.value =''">
<br/><br/>

                <label>确认密码：</label>
                <input type="password" name="newword" placeholder="重新输入密码" maxlength = "20" onfocus = "if(this.placeholder == '重新输入密码') this.value =''">
<br><a href="NewFile.jsp"style="font-size:10px;text-align:left"type="password">已有帐号？</a><br/><br/>
              <div id="login1"colspan = "2" align = "center">
               <div id="login1">
                <button type="submit" value="注  册"> &nbsp;注册 </button> 
 		        <button type="reset" value="重  置">&nbsp;重置</button>
              </div><br/><br/>
              </div>
            </form>
          </div>
           <!-- 注册结束-->
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
