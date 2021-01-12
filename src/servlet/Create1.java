package servlet;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.LocationDao1;
@WebServlet (name="Create1",urlPatterns={"/Create1"})
// 扩展 HttpServlet 类
public class Create1 extends HttpServlet {
 
  private LocationDao1 dao = new LocationDao1();


  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // 设置响应内容类型
      response.setContentType("text/html");

      // 实际的逻辑是在这里
      PrintWriter out = response.getWriter();
      out.println("<h1>get method invalid！</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) {
      String name = request.getParameter("locationName");
      String lat = request.getParameter("locationLat");
      String lng = request.getParameter("locationLng");
      String detail = request.getParameter("locationDetail");
      String id = request.getParameter("id");
      HttpSession session = request.getSession();
		String userid=(String)session.getAttribute("user") ;
		int a=Integer.parseInt(userid);
		System.out.println(a);
      try {
		dao.add(name,lng,lat,detail,a);
		dao.delete(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

  }
  public void destroy()
  {
      // 什么也不做
  }
}