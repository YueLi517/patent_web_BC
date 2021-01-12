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
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>专利处理</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style-responsive.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jQuery1.7.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
  <script type="text/javascript" src="js/login.js"language="javascript" ></script>
  	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
            <a class="active" href="javascript:;">
              <i class="fa fa-th"></i>
              <span>表格</span>
              </a>
            <ul class="sub">
              <li ><a href="basic_table.jsp">详细信息</a></li>
              <li class="active"><a href="basic_table2.jsp">专利处理</a></li>
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
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table  id="location-table1" class="table table-hover table-striped table-bordered "style="text-align:center">
                <h4><i class="fa fa-angle-right"></i> 已受理专利</h4>
                <hr>
                <thead>
                  <tr >
                    <th type="number"style="text-align:center">id</th>
                    <th type="string"style="text-align:center">名称</th>
                    <th type="string"style="text-align:center">具体内容描述</th>
                    <th type="string"style="text-align:center">提交日期</th>
                    <th type="string"style="text-align:center">类别</th>
                    
                  </tr>
                </thead>
                <tbody id="tbody1">
            	<%
            		//LocationDao locationDao = new LocationDao();
            		//List<Location> list = locationDao.queryAll();
            		//for(Location l:list){
				%>

				       	

		        <%
            		//} 
				%>


			</tbody>
			<script type="text/html" id="tbody-script1">
				{{ each data value i }}
						<tr class="table-data-line">
		                    <td> {{ value.locationId }} </td>
		                    <td>{{ value.locationName }}</td>
		                    <td >{{ value.locationLng }}</td>
		                    <td >{{ value.locationLat }}</td>
                            <td> {{ value.locationInclude }} </td>                     
		                </tr>
				{{ /each }}
			</script>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
        
        <!-- row -->
        <br>
        <div class="row mt">
          <div class="col-md-12">
            <div class="content-panel">
              <table id="location-table" class="table table-hover table-striped table-bordered">
                <h4><i class="fa fa-angle-right"></i> 待受理</h4>
                <hr>
                <thead >
                  <tr >
                  <th style="text-align:center"style="min-width: 50px; max-width: 100px;"><span class="glyphicon glyphicon-credit-card"></span> id</th>
                    <th style="text-align:center;min-width: 50px; max-width: 100px;"><i class="fa fa-bullhorn"></i> 名称</th>
                    <th style="text-align:center;" class="hidden-phone"><i class="fa fa-question-circle"></i> 具体内容描述</th>
                    <th style="text-align:center;min-width: 100px; max-width: 200px;"><i class="fa fa-bookmark"></i> 提交日期</th>
                    <th style="text-align:center;min-width: 80px; max-width: 100px;"><span class="glyphicon glyphicon-user"></span> 提交人</th>
                    <th style="text-align:center;min-width: 50px; max-width: 100px;"><i class=" fa fa-edit"></i> 类别</th>
                    <th style="text-align:center;min-width: 10px; max-width: 100px;"><i class="fa fa-check"></i></th>
                     <th style="text-align:center;min-width: 10px; max-width: 100px;""><i class="fa fa-trash-o "></i></th>
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
                            <td> {{ value.locationInclude }} </td>
		                    <td title="{{ value.locationDetail }}">{{ value.locationDetail }}</td>
		                	<td class="add"><button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button></td>
		                	<td class="remove-location"><button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></td>
		                </tr>
				{{ /each }}
			</script>
              </table>
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- /row -->
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
        <a href="basic_table2.jsp#" class="go-top">
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
  <script src="js/table.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="http://api.map.baidu.com/api?v=3.0&ak=mNBkTUgdgVT1CHLqeXPOZIHTf8Y7tXIY"></script>
<script src="https://cdn.bootcss.com/echarts/3.7.2/echarts.min.js"></script>
<script src="js/datatables.min.js"></script>
<%--<script src="js/dataTables.bootstrap.min.js"></script>--%>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/template.js"></script>
<script>

		function updateData(){
			$("#tbody").empty();
			
			$.ajax({
				url: "<%=basePath%>Table1",
				type: "post",
				async:false,
				success: function(data){
					console.log(data);
					$("#tbody").append(template("tbody-script",{data:data}));
					
				}, error: function(data){
				}
			});
$("#tbody1").empty();
			
			$.ajax({
				url: "<%=basePath%>Table2",
				type: "post",
				async:false,
				success: function(data){
					console.log(data);
					$("#tbody1").append(template("tbody-script1",{data:data}));
					
				}, error: function(data){alert("111")
				}
			});
			 $(".remove-location").click(function () {
		            var id = $(this).parent().children("td:eq(0)").text();
		            $.ajax({
		                url: "<%=basePath%>Delete1",
		                type: "post",
		                data:{
		                    locationId:id
		                },
		                success: function (data) {
		                    console.log(data);
		                    updateData();
		                   
		                }, error: function (data) {
		                    console.log(data);
		                }
		            });
		        });

		        $(".add").click(function () {
		        	currentEditingLocationId = $(this).parent().children("td:eq(0)").text();
		        	var name = $(this).parent().children("td:eq(1)").text();
		            var lng = $(this).parent().children("td:eq(2)").text();
		            var lat = $(this).parent().children("td:eq(3)").text();
		            var detail = $(this).parent().children("td:eq(5)").attr("title");
		            $.ajax({
		                url:"<%=basePath%>Create1",
		                type: "post",
		                data: {
		                	id:currentEditingLocationId,
		                    locationName: name,
		                    locationLng: lng,
		                    locationLat: lat,
		                    locationDetail: detail,
		                },
		                success: function (data) {
		                    console.log(data);
		                    updateData();
		                   
		                }, error: function (data) {
		                    console.log(data);
		                }
		            });
		         });
			
	       
		}
		
		updateData();
		


		
        
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
