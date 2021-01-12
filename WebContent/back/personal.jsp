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
  <title>个人信息</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="lib/fancybox/jquery.fancybox.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="js/login.js"></script>
      <style type="text/css">
      #pingfen ul {
    padding-left: 0;
    overflow: hidden;
    position:absolute;
    margin-left: 35%;
   }
   #pingfen  ul li {
    float: left;
    list-style: none;
    width: 27px;
    height: 27px;
    background: url(images/37.gif)
   }
 #pingfen ul li a {
    display: block;
    width: 100%;
    padding-top: 27px;
    overflow: hidden;
   }
   #pingfen  ul li.light {
    background-position: 0 -29px;
   }
      
        #customers
          {
          font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
          width:100%;
          border-collapse:collapse;
          }
        
        
        #customers tr.alt td 
          {
          color:#000000;
          background-color:rgba(250, 250, 250, 0);
          text-align:center;
          font-size:30px;
          }
  </style>
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
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 个人信息</h3>
        <hr>
         <div id="baidu-map-area" class="container">
    <div class="col-lg-8 col-lg-offset-2" id="echart-area" style="height: 300px;"></div>
</div>
<h3>经审核专利</h3>
 <table id="location-table" class="table table-hover table-striped table-bordered">
            <thead>
            <tr>
                <td style="min-width: 50px">ID</td>
                <td style="min-width: 100px">名称</td>
                <td style="min-width: 100px;max-width: 400px;">详细信息</td>
                <td style="min-width: 100px;max-width: 400px;">时间</td>
                <td style="min-width: 100px;max-width: 400px;">类别</td>
            </tr>
            </thead>
            <tbody id="tbody">
            	<%
            		//LocationDao locationDao = new LocationDao();
            		//List<Location> list = locationDao.queryAll();
            		//for(Location l:list){
				%>

				       	

		        <%
            		//} 
				%>


			</tbody>
			<script type="text/html" id="tbody-script">
				{{ each data value i }}
						<tr class="table-data-line">
		                    <td> {{ value.xuhao1 }} </td>
		                    <td>{{ value.id1 }}</td>
		                    <td >{{ value.mima1 }}</td>
		                    <td title="{{ value.locationDetail }}">{{ value.name1 }}</td>
		                    <td title="{{ value.locationCampus }}">{{ value.sex1 }}</td>
		                </tr>
				{{ /each }}
			</script>
        </table>
       
      </section>
    </section>
    <!--footer start-->
    <footer class="site-footer"">
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
  <script src="lib/fancybox/jquery.fancybox.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
 
<script src="https://cdn.bootcss.com/echarts/3.7.2/echarts.min.js"></script>
<script src="js/datatables.min.js"></script>
<%--<script src="js/dataTables.bootstrap.min.js"></script>--%>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/template.js"></script>
</body>

</html>
<script>

		/*
			初始化并设置chart参数		
		*/
		
	    var myChart = echarts.init(document.getElementById('echart-area'));
		
		
		function updateData(){
			$("#tbody").empty();
			$.ajax({
				url: "<%=basePath%>Table3",
				type: "post",
				async:false,
				success: function(data){
					console.log(data);
					$("#tbody").append(template("tbody-script",{data:data}));
					
				}, error: function(data){
					
				}
			});
			
			var dataForChart = [];
			$.ajax({
				url: "<%=basePath%>Chart4",
				type: "post",
				async:false,
				success: function(data){
					dataForChart = data;
					console.log(dataForChart);
				}, error: function(data){
					
				}
			});

			option = {
				    title : {
				        text: '审核专利比例',
				        x:'center'
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: "{a} <br/>{b} : {c} ({d}%)"
				    },
				    legend: {
				        orient: 'vertical',
				        left: 'left',
				    },
				    series : [
				        {
				            name: '类别',
				            type: 'pie',
				            radius : '55%',
				            center: ['50%', '60%'],
				            data:dataForChart,
				            itemStyle: {
				                emphasis: {
				                    shadowBlur: 10,
				                    shadowOffsetX: 0,
				                    shadowColor: 'rgba(0, 0, 0, 0.5)'
				                }
				            }
				        }
				    ]
				};
	        myChart.setOption(option);
	        
	       
		}
		
		updateData();
		

        /*
        	结束设置chart
        */
		
        
        $("#location-table").dataTable({
            "oLanguage": {
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "对不起，查询不到任何相关数据",
                "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                "sInfoEmtpy": "找不到相关数据",
                "sInfoFiltered": "数据表中共为 _MAX_ 条记录)",
                "sProcessing": "正在加载中...",
                "sSearch": "搜索",
                "sUrl": "", //多语言配置文件，可将oLanguage的设置放在一个txt文件中，例：Javascript/datatable/dtCH.txt
                "oPaginate": {
                    "sFirst":    "第一页",
                    "sPrevious": " 上一页 ",
                    "sNext":     " 下一页 ",
                    "sLast":     " 最后一页 "
                }
            },
            "columnDefs": [
                {
                    "targets": [0,1,2,3,4,5],
                    render: function (data, type, full, meta) {
                        if (data) {
                            if (data.length > 20) {
                                return data.substr(0, 14) + "...";
                            }else{
                                return data;
                            }
                        }else {
                            return "";
                        }
                    }
                }
            ]

        });
        
        function searchBtn3(id) {
            alert(id);
        }
        
</script>