package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDao;
@WebServlet (name="Update",urlPatterns={"/Update"})
public class Update extends HttpServlet {
	 
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
	      String name = request.getParameter("name1");
	      String sex = request.getParameter("sex1");
	      String age = request.getParameter("age1");
	      String job = request.getParameter("job1");
	      String xuhao = request.getParameter("xuhao1");
	      try {
			dao.update(xuhao,id,name,sex,age,job);
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