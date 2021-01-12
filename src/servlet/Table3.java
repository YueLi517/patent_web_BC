package servlet;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.userDao1;
import com.alibaba.fastjson.JSONArray;
@WebServlet (name="Table3",urlPatterns={"/Table3"})
// ��չ HttpServlet ��
public class Table3 extends HttpServlet {
 
  private userDao1 dao = new userDao1();


  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // ������Ӧ��������
      response.setContentType("text/html");

      // ʵ�ʵ��߼���������
      PrintWriter out = response.getWriter();
      out.println("<h1>get method invalid��</h1>");
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
      	try {
      		HttpSession session = request.getSession();
    		String userid=(String)session.getAttribute("user") ;
    		int a=Integer.parseInt(userid);
			List list = dao.queryAll(a);
		    String CONTENT_TYPE = "application/json; charset=GBK";
		    response.setContentType(CONTENT_TYPE);
		    PrintWriter out = response.getWriter();
		    out.println(JSONArray.toJSONString(list));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
  }
  public void destroy()
  {
      // ʲôҲ����
  }
}