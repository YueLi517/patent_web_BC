
    <%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.awt.List"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <title>后台系统主页</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
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
          <li class="mt">
            <a class="active" href="index.jsp">
              <i class="fa fa-dashboard"></i>
              <span>授权比统计</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>组件</span>
              </a>
            <ul class="sub">
              <li><a href="calendar.jsp">处理日程</a></li>
              <li><a href="gallery.jsp">概要信息</a></li>
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
            <a href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>图表</span>
              </a>
            <ul class="sub">
              <li><a href="morris.jsp">授权专利变化</a></li>
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
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-9 main-chart">
            <!--CUSTOM CHART START -->
            <div class="border-head">
              <h3>一年不同种类专利数量</h3>
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
    ResultSet rs1 = stmt1.executeQuery("SELECT * from first");
    //如果有数据，rs.next()返回true
    
  
    while(rs1.next()){ %>

    
            </div>
            <div class="custom-bar-chart">
              <ul class="y-axis"style="left:5%">
                <li><span>4000000</span></li>
                <li><span>3200000</span></li>
                <li><span>2400000</span></li>
                <li><span>1600000</span></li>
                <li><span>800000</span></li>
                <li><span>0</span></li>
              </ul>
              <div class="bar">
                <div class="title"></div>
                <div class="value tooltips"></div>
              </div>

              <div class="bar">
                <div class="title">发明--国内</div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("发明专利申请受理数_国内_累计") %>  data-toggle="tooltip" data-placement="top"><%=100*rs1.getFloat("发明专利申请受理数_国内_累计")/4000000 %>%</div>
              </div>
              <div class="bar ">
                <div class="title">发明--国外</div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("发明专利申请受理数_国外_累计") %> data-toggle="tooltip" data-placement="top"><%=100*rs1.getFloat("发明专利申请受理数_国外_累计")/4000000 %>%</div>
              </div>
              <div class="bar ">
                <div class="title">实用--国内</div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("实用新型专利申请受理数_国内_累计") %> data-toggle="tooltip" data-placement="top"><%=100*rs1.getFloat("实用新型专利申请受理数_国内_累计")/4000000 %>%</div>
              </div>
              <div class="bar ">
                <div class="title">实用--国外</div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("实用新型专利申请受理数_国外_累计") %> data-toggle="tooltip" data-placement="top"><%=100*rs1.getFloat("实用新型专利申请受理数_国外_累计")/4000000 %>%</div>
              </div>
              <div class="bar">
                <div class="title">外观--国内</div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("外观设计专利申请受理数_国内_累计") %> data-toggle="tooltip" data-placement="top"><%=100*rs1.getFloat("外观设计专利申请受理数_国内_累计")/4000000 %>%</div>
              </div>
              <div class="bar ">
                <div class="title">外观--国外</div>
                <div class="value tooltips" data-original-title=<%=rs1.getInt("外观设计专利申请受理数_国外_累计") %> data-toggle="tooltip" data-placement="top"><%=100*rs1.getFloat("外观设计专利申请受理数_国外_累计")/4000000 %>%</div>
              </div>
            </div>
                <%
				        }
				%>
            <!--custom chart end-->
            <div class="row mt">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart">
                  <div class="grey-header">
                    <h5>发明专利授权比</h5>
                  </div>
                  <canvas id="serverstatus01" height="120" width="120"></canvas>
                  <script>
                 <% //1.加载驱动程序
                  // SOMETIMES DO NOT USE 'cj' When version is low
                  Class.forName("com.mysql.jdbc.Driver");
                  //2. 获得数据库连接
                  Connection conn4 = DriverManager.getConnection(URL, USER, PASSWORD);
                  //3.操作数据库，实现增删改查
                  Statement stmt4 = conn4.createStatement();
                  ResultSet rs4 = stmt4.executeQuery("SELECT * from forth");
                  //如果有数据，rs.next()返回true
                  
                
                  while(rs4.next()){ %>
                    var doughnutData = [{
                        value: <%=rs4.getInt("发明申请数")-rs4.getInt("发明授权数") %>,
                        color: "#FF6B6B"
                      },
                      {
                        value:  <%=rs4.getInt("发明授权数") %> ,
                        color: "#fdfdfd"
                      }
                    ];
                   
				
                    var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
                  </script>
                  <div class="row">
                    <div class="col-sm-6 col-xs-6 goleft">
                      <p>授权发明专利<br/></p>
                    </div>
                    <div class="col-sm-6 col-xs-6">
                      <h1 > <%=100*rs4.getInt("发明授权数") /rs4.getInt("发明申请数") %>%</h1>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>实用专利授权比</h5>
                  </div>
                  <canvas id="serverstatus02" height="120" width="120"></canvas>
                  <script>
                    var doughnutData = [{
                        value:  <%=rs4.getInt("实用申请数")-rs4.getInt("实用授权数") %>,
                        color: "#1c9ca7"
                      },
                      {
                        value:  <%=rs4.getInt("实用授权数") %>,
                        color: "#f68275"
                      }
                    ]; 
                    var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
                  </script>
                  <p>2018-11-30</p>
                  <footer>
                    <div class="pull-left">
                      <h5>授权数<%=rs4.getInt("实用授权数") %></h5>
                    </div>
                    <div class="pull-right">
                      <h5><span class="glyphicon glyphicon-adjust"></span>&nbsp;<%=100*rs4.getInt("实用授权数")/rs4.getInt("实用申请数") %>%</h5>
                    </div><%
			        }
  				%>
                  </footer>
                </div>
                <!--  /darkblue panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <!-- REVENUE PANEL -->
                <div class="green-panel pn">
                  <div class="green-header">
                    <h5>一年内外观专利月变化</h5>
                         
    					
                  </div>
                  <div class="chart mt">
                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[
                                     
            
            
                                              60000  <%    //1.加载驱动程序
    	    // SOMETIMES DO NOT USE 'cj' When version is low
    	    Class.forName("com.mysql.jdbc.Driver");
    	    //2. 获得数据库连接
    	    Connection conn2 = DriverManager.getConnection(URL, USER, PASSWORD);
    	    //3.操作数据库，实现增删改查
    	    Statement stmt2 = conn2.createStatement();
    	    ResultSet rs2 = stmt2.executeQuery("SELECT * from second");
    	    //如果有数据，rs.next()返回true
    	    
    	  
    	    while(rs2.next()){ %>
    	   
    	                    <%=","+rs2.getInt("111") %>
   
   	                                      <%
    	    }
    					%>  
    					
                    
                    ]"></div>

                  </div>
                 <br/> <br/> <p class="mt"><b> 715307</b><br/><span class="glyphicon glyphicon-list"></span>&nbsp;年总数</p>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
             <!-- /row -->
          </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
          <div class="col-lg-3 ds">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            <div class="donut-main">
              <h4>授权数占比</h4>
              <canvas id="newchart" height="130" width="130"></canvas>
              <script>
              <%    //1.加载驱动程序
      	    // SOMETIMES DO NOT USE 'cj' When version is low
      	    Class.forName("com.mysql.jdbc.Driver");
      	    //2. 获得数据库连接
      	    Connection conn5 = DriverManager.getConnection(URL, USER, PASSWORD);
      	    //3.操作数据库，实现增删改查
      	    Statement stmt5 = conn5.createStatement();
      	    ResultSet rs5 = stmt5.executeQuery("SELECT * from forth");
      	    //如果有数据，rs.next()返回true
      	    
      	  
      	    while(rs5.next()){ %>
      	   
      	                    
     
     	                             
      					
                var doughnutData = [{
                    value: <%=rs5.getInt("申请数累计")-rs5.getInt("授权数累计") %>,
                    color: "#4ECDC4"
                  },
                  {
                    value: <%=rs5.getInt("授权数累计") %>,
                    color: "#fdfdfd"
                  }
                ];
                var myDoughnut = new Chart(document.getElementById("newchart").getContext("2d")).Doughnut(doughnutData);
              </script>
            </div>
            <!--NEW EARNING STATS -->
            <div class="panel terques-chart">
              <div class="panel-body">
                <div class="chart">
                  <div class="centered">
                    <span>授权数</span>
                    <strong><%=rs5.getInt("授权数累计") %> |<%=100 *rs5.getInt("授权数累计") /rs5.getInt("申请数累计") %>%</strong>
                             <%
      	    }
      					%>  
                  </div>
                  <br>
                  <div  class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[
 370000  <%    //1.加载驱动程序
    	    // SOMETIMES DO NOT USE 'cj' When version is low
    	    Class.forName("com.mysql.jdbc.Driver");
    	    //2. 获得数据库连接
    	    Connection conn3 = DriverManager.getConnection(URL, USER, PASSWORD);
    	    //3.操作数据库，实现增删改查
    	    Statement stmt3 = conn3.createStatement();
    	    ResultSet rs3 = stmt3.executeQuery("SELECT * from third");
    	    //如果有数据，rs.next()返回true
    	    
    	  
    	    while(rs3.next()){ %>
    	                    <%=","+rs3.getInt("111") %>
   
   	                                      <%
    	    }
    					%>  
  ]"></div>
                </div>
              </div>
            </div>
            <!--new earning end-->
            <!-- RECENT ACTIVITIES SECTION -->
            <h4 class="centered mt">近期任务</h4>
            <!-- First Activity -->
              <% //1.加载驱动程序
    	    // SOMETIMES DO NOT USE 'cj' When version is low
    	    Class.forName("com.mysql.jdbc.Driver");
    	    //2. 获得数据库连接
    	    Connection conn6 = DriverManager.getConnection(URL, USER, PASSWORD);
    	    //3.操作数据库，实现增删改查
    	    Statement stmt6 = conn6.createStatement();
    	    ResultSet rs6 = stmt6.executeQuery("SELECT * from 待受理  order by 提交日期  desc limit 4");
    	    //如果有数据，rs.next()返回true
    	    
    	  
    	    while(rs6.next()){ %>
    	    <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
    	     <div class="details">
    	    <p>
                  <muted><%=rs6.getString("提交日期") %></muted>
                  <br/>
                   待处理——<%=rs6.getString("名称") %><br/>
                </p>
              </div>
            </div><%} %>
   
      </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <div class="credits">
          专利申请授权管理系统 
        </div>
        <a href="index.html#" class="go-top">
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
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
 <!--显示大图-->
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }

  </script>
  <script type="text/javascript">
  var newarray=new Array();
  var i=0;
  <%    //1.加载驱动程序
  	    // SOMETIMES DO NOT USE 'cj' When version is low
  	    Class.forName("com.mysql.jdbc.Driver");
  	    //2. 获得数据库连接
  	    Connection conn7 = DriverManager.getConnection(URL, USER, PASSWORD);
  	    //3.操作数据库，实现增删改查
  	    Statement stmt7 = conn7.createStatement();
  	    ResultSet rs7 = stmt7.executeQuery("SELECT * from third");
  	    //如果有数据，rs.next()返回true
  	    
  	  
  	while(rs7.next()){ %>
    	   
  	 newarray[i]   =<%=rs7.getInt("111") %>
   i=i+1
   	                                      <%
    	    }
    					%> 
    					var newstring=newarray.join(",");
    					document.getElementById("bar").innerHTML=newstring;
  </script>
</body>

</html>
