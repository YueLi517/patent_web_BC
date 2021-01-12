<%@page import="dao.userDao"%>
<%@page import="beans.user"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +request.getServerPort() + path + "/";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" Free Responsive Html5 Templates" />
    
	<title>申请提交</title>
	
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
    <!-- Custom Fonts -->
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/style-responsive">
    
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="template/js/html5shiv.js"></script>
        <script src="template/js/respond.min.js"></script>
    <![endif]-->
	
</head>

<body>
    <!--header start-->
	<header class="header">
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars tooltips" data-placement="right"></div>
		</div>
		<!--logo start-->
		<a href="#" class="logo"><b>patent</b></a>
		<!--logo end-->
		
		<div class="top-menu">
			<ul class="nav pull-right top-menu">
				<li><a class="social" href="../NewFile.jsp">Logout</a></li>
			</ul>
		</div>
	</header>
	<!--header end-->
	<!--sidebar start-->
	<aside>
		<div id="sidebar"  class="nav-collapse ">
			<!-- sidebar menu start-->
			<ul class="sidebar-menu">
				<li>
					<a href="index.jsp">
						<i class="fa fa-tags"></i>
						<span>主页</span>
					</a>
				</li>
				<li>
					<a href="submit.jsp">
						<i class="fa fa-tags"></i>
						<span>专利提交</span>
					</a>
				</li>
				<li>
					<a href="self.jsp">
						<i class="fa fa-tags"></i>
						<span>专利查询</span>
					</a>
				</li>
			</ul>
		  <!-- sidebar menu end-->
		</div>
	</aside>
    <!--sidebar end-->
	
	
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			
				<div class="site-content">
					<article>
						<div class="art-content">
							<div class="heading text-center">
								<h2>申请表提交</h2>
								<hr class="line">
							</div>
							<div class="col-md-12">
							<h3>信息</h3>
							<span style="font-size:12px">请认真填写您的申请和联系信息，我们会通过邮件或短信通知您结果！</span><br> <br>
							<p style="font-size:12px">当然，您也可以在本页查看您的信息和结果</p>
							   <p style="font-size:12px">我们会在30到60个工作日内向您返还信息</p>
							<p style="font-size:12px">如果您有疑问,<a href="mailto:760375175@qq.com?">联系我们
          </a></p>
						</div>
						<div class="col-md-12">
							<h3>信息表格</h3>
							<form id="ff" name="form1" action="../uploadHttpOneServet" method="post" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
										<input type="text" class="form-control input-lg" name="name" id="name" placeholder="你的姓名" required="required" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input type="email" class="form-control input-lg" name="email" id="email" placeholder="邮箱" required="required" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control input-lg" name="tel" id="subject" placeholder="联系电话" required="required" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
									<input type="file" name="resPath">
									</div>
								</div>
								</div>
								<div class="row">
								<div class="col-md-6">
										<div class="form-group">
										<input type="text" class="form-control input-lg" name="1name" id="1name" placeholder="专利名称" required="required" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											 <select class="form-control"id="type"name="aaa">
											 <option value="实用">实用</option>
											 <option value="发明">发明</option>
											 <option value="外观">外观</option>
											  </select>
										</div>
									</div>
								</div>
								<%String leibie=request.getParameter("aaa");
								session.setAttribute("leibie",leibie);%>
								<div class="row">
									<div class="col-md-12 text-center">
										<div class="form-group">
											<textarea name="message" id="message" class="form-control" rows="4" cols="25" required="required"
											placeholder="详细信息"></textarea>
										</div>						
										<button type="submit" class="btn btn-send btn-lg page-scroll" name="submitcontact" id="submitcontact">提交</button>
									</div>
								</div>
							</form>
						</div>
						</div>
					</article>
				</div>
		</section><!-- /wrapper -->
	</section><!-- /MAIN CONTENT -->

	<!--main content end-->
	<!--footer start-->
	<footer class="site-footer">
	  <div class="text-center">
		  专利申请注册系统
	  </div>
	</footer>
	<!--footer end-->
	
	
	<!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	
    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

</body>
</html>
