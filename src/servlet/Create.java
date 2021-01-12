package servlet;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.userDao;

@WebServlet (name="Create",urlPatterns={"/Create"})
// 鎵╁睍 HttpServlet 绫�
public class Create extends HttpServlet {
 
  private userDao dao = new userDao();


  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // 璁剧疆鍝嶅簲鍐呭绫诲瀷
      response.setContentType("text/html");

      // 瀹為檯鐨勯�昏緫鏄湪杩欓噷
      PrintWriter out = response.getWriter();
      out.println("<h1>get method invalid锛�</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) {
      String id = request.getParameter("id1");
      String mima = request.getParameter("mima1");
      String name = request.getParameter("name1");
      String sex = request.getParameter("sex1");
      String age = request.getParameter("age1");
      String job = request.getParameter("job1");
      
      try {
		dao.add(id,mima,name,sex,age,job);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

  }
  public void destroy()
  {
      // 浠�涔堜篃涓嶅仛
  }
}