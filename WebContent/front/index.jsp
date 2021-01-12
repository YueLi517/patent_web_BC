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

	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" Free Responsive Html5 Templates" />
    
	<title>专利申请注册</title>
	
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
			<!-- Carousel -->
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/9.jpg" alt="First slide">
						<!-- Static Header -->
						<div class="header-text">
							<div class="col-md-12 text-center">
								<h2 style="color:blue">欢迎来到专利系统</h2>
								<br>
							</div>
						</div><!-- /header-text -->
					</div>
					<div class="item">
						<img src="images/10.jpg" alt="Second slide">
					</div>
					<div class="item">
						<img src="images/11.jpg" alt="Third slide">
					</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div><!-- /carousel -->
			<div class="no-gutter">
				<div class="col-lg-6">
					<article class="box-shadow">
						<div class="no-gutter">
							<div class="col-sm-6 fix-right">
							<br><br>
								<img src="images/4.jpg">
							</div>
							<div class="col-sm-6">
								<div class="art-content text-center">
									<div class="heading">
										<h2>外观</h2>
										<hr class="line">
									</div>
									<p>一盏灯</p>
									<a class="btn btn-theme">了解更多...</a>
								</div>
							</div>
						</div>
					</article>
					<article  class="box-shadow">
						<div class="no-gutter">
							<div class="col-sm-6"><br><br>
								<img src="images/6.jpg">
							</div>
							<div class="col-sm-6">
								<div class="art-content text-center">
									<div class="heading">
										<h2>实用</h2>
										<hr class="line">
									</div>
									<p>一个杯子</p>
									<a class="btn btn-theme">了解更多...</a>
								</div>
							</div>
						</div>
					</article>
					<article  class="box-shadow">
						<div class="no-gutter">
							<div class="col-sm-6 fix-right">
								<img src="images/9.gif">
							</div>
							<div class="col-sm-6">
								<div class="art-content text-center">
									<div class="heading"><br><br>
										<h2>发明</h2>
										<hr class="line">
									</div>
									<p>一副眼镜</p>
									<a class="btn btn-theme">了解更多...</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<div class="col-lg-6">
					<article  class="box-shadow">
						<div class="no-gutter">
							<div class="col-sm-6 fix-right">
								<div class="box-image"><br><br>
									<img src="images/7.jpg">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="art-content text-center">
									<div class="heading">
										<h2>实用</h2>
										<hr class="line">
									</div>
									<p>一个茶壶</p>
									<a class="btn btn-theme">了解更多...</a>
								</div>
							</div>
						</div>
					</article>
					<article  class="box-shadow">
						<div class="no-gutter">
							<div class="col-sm-6"><br><br>
								<img src="images/5.jpg">
							</div>
							<div class="col-sm-6">
								<div class="art-content text-center">
									<div class="heading">
										<h2>外观</h2>
										<hr class="line">
									</div>
									<p>一扇门</p>
									<a class="btn btn-theme">了解更多...</a>
								</div>
							</div>
						</div>
					</article>
					<article class="box-shadow">
						<div class="no-gutter">
							<div class="col-sm-6 fix-right">
								<img src="images/10.gif">
							</div>
							<div class="col-sm-6">
								<div class="art-content text-center">
									<div class="heading"><br><br>
										<h2>发明</h2>
										<hr class="line">
									</div>
									<p>一张图纸</p>
									<a class="btn btn-theme">了解更多...</a>
								</div>
							</div>
						</div>
					</article>
				</div>
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