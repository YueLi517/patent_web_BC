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
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>授权专利变化</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

  
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.jsp" class="logo"><b>DASH<span>IO</span></b></a>
      <!--logo end-->
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../NewFile.jsp">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="personal.jsp"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered"><%=session.getAttribute("user") %></h5>
          <li class="sub-menu">
            <a  href="index.jsp">
              <i class="fa fa-dashboard"></i>
              <span>授权比统计</span>
              </a>
          </li>
          <li class="sub-menu">
            <a  href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>组件</span>
              </a>
            <ul class="sub">
              <li ><a href="calendar.jsp">处理日程</a></li>
              <li><a  href="gallery.jsp">概要信息</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>表单</span>
              </a>
            <ul class="sub">
              <li><a href="form_component.jsp">申请提交</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>表格</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.jsp">详细信息</a></li>
              <li ><a href="basic_table2.jsp">专利处理</a></li>
            </ul>
          </li>
          
          <li class="sub-menu">
            <a  class="active" href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>图表</span>
              </a>
            <ul class="sub">
              <li  class="active"><a href="morris.jsp">授权专利变化</a></li>
            </ul>
          </li>


        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i>授权专利统计</h3>
        
        <!-- page start-->
        <div id="morris">
          <div class="row mt"style="width:200%">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 国内外授权数</h4>
                <div class="panel-body">
                 <div id="mountNode" style="width: 100%;height:30%;"></div>

                </div>
              </div>
            </div>
            </div>
            <div class="row mt"style="width:200%">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 一年内授权数量变化</h4>
                <div class="panel-body">
 
    
            </div>
            <div class="custom-bar-chart">
              <ul class="y-axis"style="left:5%">
                <li><span>250000</span></li>
                <li><span>200000</span></li>
                <li><span>150000</span></li>
                <li><span>100000</span></li>
                <li><span>50000</span></li>
                <li><span>0</span></li>
              </ul>
              <div class="bar">
                <div class="title"></div>
                <div class="value tooltips"  data-toggle="tooltip" data-placement="top">0</div>
              </div>
                   <%

String URL = "jdbc:mysql://localhost:3306/1?serverTimezone=GMT";
//DB USER NAME
String USER = "root";
//DB PASSWORD
String PASSWORD = "3306";
    //1.加载驱动程序
    // SOMETIMES DO NOT USE 'cj' When version is low
    Class.forName("com.mysql.jdbc.Driver");
    //2. 获得数据库连接
    Connection conn1 = DriverManager.getConnection(URL, USER, PASSWORD);
    //3.操作数据库，实现增删改查
    Statement stmt1 = conn1.createStatement();
    ResultSet rs1 = stmt1.executeQuery("SELECT * from fifth order by 时间 limit 6");
   
    //如果有数据，rs.next()返回true
    
  
    while(rs1.next()){ %>

              <div class="bar">
                <div class="title"><%=rs1.getInt("时间") %></div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("总计") %>  data-toggle="tooltip" data-placement="top"><%=100*rs1.getInt("总计")/250000 %>%</div>
              </div>
 <%
				        }
				%>
            </div>
            <div class="custom-bar-chart">
              <ul class="y-axis"style="left:5%">
                <li><span>250000</span></li>
                <li><span>200000</span></li>
                <li><span>150000</span></li>
                <li><span>100000</span></li>
                <li><span>50000</span></li>
                <li><span>0</span></li>
              </ul>
               <div class="bar">
                <div class="title"></div>
                <div class="value tooltips"  data-toggle="tooltip" data-placement="top">0</div>
              </div>
            <%  ResultSet rs3 = stmt1.executeQuery("SELECT * from fifth order by 时间  limit 6,12");
     while(rs3.next()){ %>

              <div class="bar">
                <div class="title"><%=rs3.getInt("时间") %></div>
                <div class="value tooltips" data-original-title=<%=rs3.getInt("总计") %>  data-toggle="tooltip" data-placement="top"><%=100*rs3.getInt("总计")/250000 %>%</div>
              </div>
 <%
				        }
				%>
            </div>              
            <!--custom chart end-->

                </div>
              </div>
            </div>
          </div>
         <!--  <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 三种专利授权数变化</h4>
                <div class="panel-body">
                  <div id="hero-area" class="graph"></div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 三种专利分别占比</h4>
                <div class="panel-body">
                  <div id="hero-donut" class="graph"></div>
                </div>
              </div>
            </div>
          </div> -->
        </div>
        <!-- page end-->
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <div class="credits">
          专利申请授权管理系统 
        </div>
        <a href="morris.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/raphael/raphael.min.js"></script>
  <script src="lib/morris/morris.min.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/morris-conf.js"></script>
  <script>/*Fixing iframe window.innerHeight 0 issue in Safari*/document.body.clientHeight;</script>
            <script src="https://gw.alipayobjects.com/os/antv/pkg/_antv.g2-3.5.1/dist/g2.min.js"></script>
            <script src="https://gw.alipayobjects.com/os/antv/pkg/_antv.data-set-0.10.1/dist/data-set.min.js"></script>
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
<script type="text/javascript">

  
    

var data = [
	<%


	    //1.加载驱动程序
	    // SOMETIMES DO NOT USE 'cj' When version is low
	    Class.forName("com.mysql.jdbc.Driver");
	    //2. 获得数据库连接
	    Connection conn2 = DriverManager.getConnection(URL, USER, PASSWORD);
	    //3.操作数据库，实现增删改查
	    Statement stmt2 = conn2.createStatement();
	    ResultSet rs2 = stmt2.executeQuery("SELECT * from fifth");
	    //如果有数据，rs.next()返回true
	    
     while(rs2.next()){ %>{
    "month": <%=rs2.getInt("时间") %>,
    "event": "国内",
    "times": <%=rs2.getString("国内授权数") %>,
}, {
    "month": <%=rs2.getInt("时间") %>,
    "event": "国外",
    "times":<%=rs2.getString("国外授权数") %>
},
<%}%>
];

  var chart = new G2.Chart({
    container: 'mountNode',
    forceFit: true,
    height: window.innerHeight
  });
  chart.source(data, {
    month: {
      range: [0, 1]
    }
  });
  chart.tooltip({
    crosshairs: {
      type: 'line'
    }
  });
  chart.axis('temperature', {
    label: {
      formatter: function formatter(val) {
        return val + '次';
      }
    }
  });
  chart.line().position('month*times').color('event');
  chart.point().position('month*times').color('event').size(4).shape('circle').style({
    stroke: '#fff',
    lineWidth: 1
  });
  chart.render();


</script>


</body>

</html>
