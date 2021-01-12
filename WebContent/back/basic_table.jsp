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
  <title>详细信息</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
     <link href="css/bootstrap.min.css" rel="stylesheet">
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
              <li class="active"><a href="basic_table.jsp">详细信息</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 详细信息</h3>
        <div class="row">
          <div class="col-md-12 ">
          
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i> 工作人员信息
              <button class="btn btn-danger"data-toggle="modal" data-target="#remove"style="float:right"><span class="glyphicon glyphicon-remove"></span>删除</button>
               <button class="btn btn-success" data-toggle="modal" data-target="#admend"style="float:right"><span class="glyphicon glyphicon-pencil"></span>修改</button>
		                	
               <button class="btn btn-primary " data-toggle="modal" data-target="#add"style="float:right"><span class="glyphicon glyphicon-arrow-up"></span>添加信息</button>
            </h4>
               <hr>
              <!-- 模态框（Modal） -->
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加工作人员信息
				</h4>
			</div>
			<div class="modal-body">
				<form action="" style="text-align:center">账号:&nbsp;<input type="text" id="add-id" placeholder="">
				<br> <br>密码:&nbsp;<input type="text" id="add-mima" placeholder="">
                  <br> <br> 姓名:&nbsp;<input type="text" id="add-name" placeholder="">
                 <br> <br> 性别:&nbsp;<input type="radio" name="sex" value="男" />男
                 <input type="radio" name="sex" value="女"/>女
                 <br> <br>年龄:&nbsp;<input type="text" id="add-age" placeholder="">
                   <br>  <br>职务:&nbsp;<input type="text" id="add-job" placeholder="">
                             <br>  <br> 
                            </form>
			</div>
			<div class="modal-footer">
			<button type="button" class="btn btn-primary"id="add-location-submit"data-dismiss="modal">
					提交
				</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div><!-- 模态框结束 -->

              <table  id="tableSort" class="table table-hover table-striped table-bordered ">
                <thead>
                  <tr>
                  <th type="number">#</th>
                    <th type="number">账号</th>
                    <th type="string">姓名</th>
                    <th type="string">性别</th>
                    <th type="number">年龄</th>
                    <th type="string">职务</th>
                  </tr>
                </thead>
                <tbody>
            	       	<%
            		userDao userDao = new userDao();
            		List<user> list = userDao.queryAll();
            		for(user l:list){
				%>       	
						<tr class="table-data-line">
		                    <td class="classId"><%=l.getxuhao1() %></td>
		                    <td><%=l.getid1() %></td>
		                    
		                    <td ><%=l.getname1() %></td>
		                    <td><%=l.getsex1() %></td>
		                    <td ><%=l.getage1() %></td>
		                    <td ><%=l.getjob1() %></td>
		                	
		                </tr>
		        <%
            		} 
				%>

 
			</tbody>
			<div id="pagination"></div>
              </table>
             
            </div>
          </div>
<div id="baidu-map-area" class="container">
    <div class="col-lg-8 " id="echart-area" style="height: 300px;width:49%"></div>
    <div class="col-lg-8 " id="echart-area1" style="height: 300px;width:49%"></div>
</div>
                     <!-- 模态框（Modal） -->
<div class="modal fade" id="admend" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改id
				</h4>
			</div>
			<div class="modal-body">
				<form action="" style="text-align:center">修改的id:&nbsp;<input type="text" id="id11" placeholder="">
				<br> <br> 
                            </form>
			</div>
			<div class="modal-footer">
			<button type="button" class="btn btn-primary"id="edit-location1"data-dismiss="modal">
					确定
				</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div><!-- 模态框结束 -->       

                <!-- 模态框（Modal） -->
<div class="modal fade" id="admend1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					信息
				</h4>
			</div>
			<div class="modal-body">
				<form action="" style="text-align:center">账号:&nbsp;<input type="text" id="id" placeholder=""readonly="readonly">

                  <br> <br> 姓名:&nbsp;<input type="text" id="name" placeholder=""readonly="readonly">
                 <br> <br> 性别:&nbsp;<input type="text" id="sex" placeholder=""readonly="readonly">
                 <br> <br>年龄:&nbsp;<input type="text" id="age" placeholder="">
                   <br>  <br>职务:&nbsp;<input type="text" id="job" placeholder="">
                             <br>  <br> 
                            </form>
			</div>
			<div class="modal-footer">
			<button type="button" class="btn btn-primary"οnclick="modify()"id="edit-location"data-dismiss="modal">
					确定
				</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div><!-- 模态框结束 -->     

                    <!-- 模态框（Modal） -->
<div class="modal fade" id="remove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					删除
				</h4>
			</div>
			<div class="modal-body">
				<form action="" style="text-align:center">输入想要删除的id:&nbsp;<input type="text" id="id1" placeholder="">

                             <br>  <br> 
                            </form>
			</div>
			<div class="modal-footer">
			<button type="button" class="btn btn-primary" id="remove-location111" data-dismiss="modal">
					确定
				</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div><!-- 模态框结束 -->        

      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start--><br><br><br>
    <footer class="site-footer">
      <div class="text-center">
        <div class="credits">
          专利申请授权管理系统 
        </div>
        <a href="basic_table.jsp#" class="go-top">
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

   <script type="text/javascript">
        $(document).ready(function(){
            var tableObject = $('#tableSort');//获取id为tableSort的table对象
            var tbHead = tableObject.children('thead');//获取table对象下的thead
            var tbHeadTh = tbHead.find('tr th');//获取thead下的tr下的th
            var tbBody = tableObject.children('tbody');//获取table对象下的tbody
            var tbBodyTr = tbBody.find('tr');//获取tbody下的tr
            var sortIndex = -1; //初始化索引
            tbHeadTh.each(function() {//遍历thead的tr下的th
                var thisIndex = tbHeadTh.index($(this));//获取th所在的列号
                //鼠标移除和聚焦的效果，不重要
                $(this).mouseover(function(){ //鼠标移开事件
                    tbBodyTr.each(function(){//编列tbody下的tr
                        var tds = $(this).find("td");//获取列号为参数index的td对象集合
                        $(tds[thisIndex]).addClass("hover");
                    });
                }).mouseout(function(){ //鼠标聚焦时间
                    tbBodyTr.each(function(){
                        var tds = $(this).find("td");
                        $(tds[thisIndex]).removeClass("hover");
                    });
                });

                $(this).click(function() {  //鼠标点击事件
                    var dataType = $(this).attr("type"); //获取当前点击列的 type
                    checkColumnValue(thisIndex, dataType); //对当前点击的列进行排序 （当前索引，排序类型）
                });
            });



            //对表格排序
            function checkColumnValue(index, type) {
                var trsValue = new Array();  //创建一个新的列表
                tbBodyTr.each(function() { //遍历所有的tr标签
                    var tds = $(this).find('td');//查找所有的 td 标签
                    //将当前的点击列 push 到一个新的列表中
                    //包括 当前行的 类型、当前索引的 值，和当前行的值
                    trsValue.push(type + ".separator" + $(tds[index]).html() + ".separator" + $(this).html());
                    $(this).html("");//清空当前列
                });
                var len = trsValue.length;//获取所有要排序戏的列的长度
                if(index == sortIndex){//sortIndex =-1
                    trsValue.reverse();//???
                } else {
                    for(var i = 0; i < len; i++){//遍历所有的行
                        type = trsValue[i].split(".separator")[0];// 获取要排序的类型
                        for(var j = i + 1; j < len; j++){
                            value1 = trsValue[i].split(".separator")[1];//当前值
                            value2 = trsValue[j].split(".separator")[1];//当前值的下一个
                            if(type == "number"){
                                //js 三元运算  如果 values1 等于 '' （空） 那么，该值就为0，否则 改值为当前值
                                value1 = value1 == "" ? 0 : value1;
                                value2 = value2 == "" ? 0 : value2;
                                //parseFloat() 函数可解析一个字符串，并返回一个浮点数。
                                //该函数指定字符串中的首个字符是否是数字。如果是，则对字符串进行解析，直到到达数字的末端为止，然后以数字返回该数字，而不是作为字符串。
                                //如果字符串的第一个字符不能被转换为数字，那么 parseFloat() 会返回 NaN。
                                if(parseFloat(value1) > parseFloat(value2)){//如果当前值 大于 下一个值
                                    var temp = trsValue[j];//那么就记住 大 的那个值
                                    trsValue[j] = trsValue[i];
                                    trsValue[i] = temp;
                                }
                            } else if(type == "ip"){
                                if(ip2int(value1) > ip2int(value2)){
                                    var temp = trsValue[j];
                                    trsValue[j] = trsValue[i];
                                    trsValue[i] = temp;
                                }
                            } else {
                                //JavaScript localeCompare() 方法 用本地特定的顺序来比较两个字符串。
                                //说明比较结果的数字。
                                // 如果 stringObject 小于 target，则 localeCompare() 返回小于 0 的数。
                                // 如果 stringObject 大于 target，则该方法返回大于 0 的数。
                                // 如果两个字符串相等，或根据本地排序规则没有区别，该方法返回 0。
                                if (value1.localeCompare(value2) > 0) {//该方法不兼容谷歌浏览器
                                    var temp = trsValue[j];
                                    trsValue[j] = trsValue[i];
                                    trsValue[i] = temp;
                                }
                            }
                        }
                    }
                }
                for(var i = 0; i < len; i++){
                    //将排序完的 值 插入到 表格中
                    //:eq(index) 匹配一个给定索引值的元素
                    $("tbody tr:eq(" + i + ")").html(trsValue[i].split(".separator")[2]);
                    //console.log($("tbody tr:eq(" + i + ")").html())
                }
                sortIndex = index;
            }
            //IP转成整型 ？？？？？
            function ip2int(ip){
                var num = 0;
                ip = ip.split(".");
                //Number() 函数把对象的值转换为数字。
                num = Number(ip[0]) * 256 * 256 * 256 + Number(ip[1]) * 256 * 256 + Number(ip[2]) * 256 + Number(ip[3]);
                return num;
            }
            })
    </script>
<script src="https://cdn.bootcss.com/echarts/3.7.2/echarts.min.js"></script>
<script src="js/datatables.min.js"></script>
<%--<script src="js/dataTables.bootstrap.min.js"></script>--%>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/template.js"></script>
<script type="text/javascript">
function updateData111(){
     $("#remove-location111").click(function () {
         var id =$("#id1").val();
         $.ajax({
             url: "<%=basePath%>Delete",
             type: "post",
             data:{
                 id1:id
             },
             success: function (data) {
                 console.log(data);
                 updateData();
                 window.location.reload();
             }, error: function (data) {
                 console.log(data);
             }
         });
         window.location.reload();
     }); 
    $("#edit-location1").click(function () {
    	
    	$("#admend1").modal();

    	 currentEditingLocationId =  $("#id11").val();
         row=document.getElementById("tableSort").rows.length;
         m=0;
       for(var i=1;m!=currentEditingLocationId;i++){
     	  m=document.getElementById('tableSort').rows[i].childNodes[1].innerText;
      }
       var name = $("table").find("tr").eq(i-1).find("td").eq(1).text();
       var lng =  $("table").find("tr").eq(i-1).find("td").eq(2).text();
       var lat =  $("table").find("tr").eq(i-1).find("td").eq(3).text();
       var detail =  $("table").find("tr").eq(i-1).find("td").eq(4).text();
       var campus =  $("table").find("tr").eq(i-1).find("td").eq(5).text();

       $("#id").val(name);
       $("#name").val(lng);
       $("#sex").val(lat);
       $("#age").val(detail);
       $("#job").val(campus);
    });
     $("#edit-location").click(function () {
         $.ajax({
             url: "<%=basePath%>Update",
             type: "post",
             data:{
             	xuhao1 :currentEditingLocationId,
                 id1: $("#id").val(),
                 name1: $("#name").val(),
                 sex1: $("#sex").val(),
                 age1: $("#age").val(),
                 job1: $("#job").val()
             },
             success: function (data) {
                 console.log(data);
                 updateData();
             }, error: function (data) {
                 console.log(data);
             }
         });
         window.location.reload();
     });
    $("#add-location-submit").click(function () {
var locationInclude=document.forms[0].sex[0].value;
for(var i=0;i<2;i++){
	if(document.forms[0].sex[0].checked==true){
		 locationInclude =document.forms[0].sex[0].value;
		
	}
	else{
		 locationInclude =document.forms[0].sex[1].value;
	}
}

        var locationName = $("#add-id").val();
        var locationLng = $("#add-mima").val();
        var locationLat = $("#add-name").val();
      //  var locationInclude = $("#add-sex").val();
        var locationDetail = $("#add-age").val();
        var locationCampus = $("#add-job").val();
        $.ajax({
            url:"<%=basePath%>Create",
            type: "post",
            data: {
                id1: locationName,
               mima1: locationLng,
                name1: locationLat,
                sex1: locationInclude,
                age1: locationDetail,
                job1: locationCampus,
            },
            success: function (data) {
                console.log(data);
                updateData();
                
            }, error: function (data) {
                console.log(data);
            }
        });
        window.location.reload();
     });
    var myChart = echarts.init(document.getElementById('echart-area'));
    var dataForChart = [];
	$.ajax({
		url: "<%=basePath%>Chart2",
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
		        text: '各职务所占比例',
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
		            name: '职务',
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
    var myChart1 = echarts.init(document.getElementById('echart-area1'));
    var dataForChart1 = [];
	$.ajax({
		url: "<%=basePath%>Chart3",
		type: "post",
		async:false,
		success: function(data){
			dataForChart1 = data;
			console.log(dataForChart1);
		}, error: function(data){
		}
	});

	option = {
		    title : {
		        text: '男女分别占比',
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
		            name: '性别',
		            type: 'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:dataForChart1,
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
    myChart1.setOption(option);
}

updateData111();




         $("#tableSort").dataTable({
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
