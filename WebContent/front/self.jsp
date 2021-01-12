<%@page import="dao.LocationDao1"%>
<%@page import="beans.Location1"%>
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
	    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" Free Responsive Html5 Templates" />
    
	<title>个人信息</title>
	
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
    <!-- Custom Fonts -->
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/style-responsive">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.4.0/jquery.js"></script>
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
			<div class="page-title text-center">
				<h1>授权专利查询</h1>
				<div class="description">
				<div id="baidu-map-area" class="container">
    <div class="col-lg-8 col-lg-offset-2" id="echart-area" style="height: 300px;"></div>
</div>
		<div class="row">
        <table id="location-table" class="table table-hover table-striped table-bordered">
            <thead>
            <tr>
                <td style="min-width: 50px">ID</td>
                <td style="min-width: 100px">专利名称</td>
                <td style="min-width: 200px;max-width: 300px;">详细信息</td>
                <td style="min-width: 200px;max-width: 300px;">时间</td>
                <td style="min-width: 50px;max-width: 100px;">类型</td>

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
		                    <td> {{ value.locationId }} </td>
		                    <td>{{ value.locationName }}</td>
		                    <td >{{ value.locationLng }}</td>
		                    <td >{{ value.locationLat }}</td>
		                	<td >{{ value.locationInclude }}</td>
		                	<td class="hidden">删除</td>
		                </tr>
				{{ /each }}
			</script>
        </table>
</div>
		
				</div>
			</div>
			<br><br>
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
<script src="https://cdn.bootcss.com/echarts/3.7.2/echarts.min.js"></script>
<script src="js/datatables.min.js"></script>
<%--<script src="js/dataTables.bootstrap.min.js"></script>--%>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/template.js"></script>
<script>

		/*
			初始化并设置chart参数		
		*/
		
		 var myChart = echarts.init(document.getElementById('echart-area'));
		
		
		function updateData11(){
			$("#tbody").empty();
			$.ajax({
				url: "<%=basePath%>Table",
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
				url: "<%=basePath%>Chart",
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
				        text: '各种专利所占比例',
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
				            name: '专利所占比',
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
		
		updateData11();
		

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
</body>
</html>
