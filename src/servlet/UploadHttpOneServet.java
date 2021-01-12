package servlet;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.http.HttpSession;

import util.MyUtil;
import dao.LocationDao;
@WebServlet("/uploadHttpOneServet")
@MultipartConfig(maxFileSize = 10*1024*1024)//设置上传文件的最大值为10M
public class UploadHttpOneServet extends HttpServlet {
	  private LocationDao dao = new LocationDao();

	 private static final long serialVersionUID = 1L; 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
	      out.println("<h1>get method invalid锛�</h1>");
	      response.setHeader("Content-type", "text/html;charset=UTF-8");  
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置响应的内容类型
		response.setContentType("text/html;charset=GB2312");
		//取得输出对象
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("GB2312");
		//获得Part对象
		Part part = request.getPart("resPath");
		String user=request.getParameter("name");
		String name=request.getParameter("1name");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		String detail=request.getParameter("message");
		String leibie=request.getParameter("aaa");
		HttpSession session = request.getSession();
		String userid=(String)session.getAttribute("user1") ;
		File uploadFileDir = new File(getServletContext().getRealPath("/uploadFiles"));
		if(!uploadFileDir.exists()){
			uploadFileDir.mkdir();
		}
		//获得原始文件名
		String oldName = MyUtil.getFileName(part);
		
		if(oldName != null){
			//上传到服务器的uploadFiles目录中
			part.write(uploadFileDir + File.separator + oldName);
		}
		String c=uploadFileDir + File.separator + oldName;
		long l = System.currentTimeMillis();
	     String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date(l)).toString();


		try {
			dao.add(name,detail,date,user,leibie,tel,email,userid,c);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		//指定上传的文件保存到服务器的uploadFiles目录中
		
		session.setAttribute("path",c);
		
		//response.sendRedirect("front/submit.jsp");
		out.println("<script language='javascript'> alert('提交成功');location.href='front/submit.jsp';</script>"); 
	}
	
}
