package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LocationDao;
@WebServlet (name="Delete1",urlPatterns={"/Delete1"})
public class Delete1 extends HttpServlet {
	 
	  private LocationDao dao = new LocationDao();


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
	      String id = request.getParameter("locationId");
	      try {
			dao.delete(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	  }

	}