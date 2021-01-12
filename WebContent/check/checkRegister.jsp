<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Feilong_chechRegister.jsp' starting page</title>
    
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
    <%      
            String user = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");  
            String pwd = request.getParameter("password");
            String newword = request.getParameter("newword");
 if(user.length()==0){
	 out.println("<script language='javascript'>alert('用户名不能为空！');window.location.href='zhuce.jsp';</script>");  
 }
 else if(user.length()!=11){
	 out.println("<script language='javascript'>alert('用户名应为11位！');window.location.href='zhuce.jsp';</script>");  
 }
      else if(pwd==""){
	 out.println("<script language='javascript'>alert('密码不能为空！');window.location.href='zhuce.jsp';</script>");  
 }
      else if(!pwd.equals(newword)){
    	  out.println("<script language='javascript'>alert('两次密码不一致！');window.location.href='zhuce.jsp';</script>");  
      }
           else{
            String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String url = "jdbc:mysql://localhost:3306/1?serverTimezone=GMT";
            String username = "root";
            String password = "3306";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接
            PreparedStatement pStmt = conn.prepareStatement("select * from user where user = '" + user + "'");
              ResultSet rs = pStmt.executeQuery();
                if(rs.next()){
                    out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='zhuce.jsp';</script>");
                }else{
                    PreparedStatement tmt = conn.prepareStatement("Insert into user values('" + user + "','" + pwd + "')");
                        int rst = tmt.executeUpdate();
                        if (rst != 0){
                              out.println("<script language='javascript'>alert('用户注册成功！前往登录！');window.location.href='NewFile.jsp';</script>");  
                        }else{
                           out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='zhuce.jsp';</script>");  
                        }
                }
 }
     %>
  </body>
</html>
