<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Feilong_loginCh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
  </head>
  <body>
    <%      //接收用户名和密码  
            String user =request.getParameter("username1");
            String pwd = request.getParameter("password1");
            String code = request.getParameter("code");
            String checkcode = request.getParameter("checkcode");
            if(code.length()==0){
            	
            	out.println("<script language='javascript'>alert('请输入验证码！');window.location.href='NewFile.jsp';</script>"); 
            }
            else if(!code.equals(checkcode)){
            	
            	out.println("<script language='javascript'>alert('验证码错误！');window.location.href='NewFile.jsp';</script>"); 
            }
            else{
            	
            String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String url = "jdbc:mysql://localhost:3306/1?serverTimezone=GMT";
            String username2 = "root";
            String password2 = "3306";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username2,password2);//得到连接
            PreparedStatement pStmt = conn.prepareStatement("select * from user where user = '" + user + "' and pwd = '" + pwd + "'");
              ResultSet rs = pStmt.executeQuery();
                if(rs.next()){
                    response.sendRedirect("../front/index.jsp?user="+URLEncoder.encode(user)); //解决乱码 
                }else{
                	out.println("<script language='javascript'>alert('登陆失败！');window.location.href='NewFile.jsp';</script>"); 
                    
                }
     rs.close();
     pStmt.close();
     conn.close();
            }
            session.setAttribute("user1",user);
     %>
  </body>
</html>