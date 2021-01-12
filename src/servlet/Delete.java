package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDao;
//@WebServlet("/applydelete")
@WebServlet (name="Delete",urlPatterns={"/Delete"})


public class Delete extends HttpServlet {
	 

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
	      try {
			dao.delete(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	  }

	}