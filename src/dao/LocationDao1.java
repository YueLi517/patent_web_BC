package dao;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beans.Location1;
import util.MyUtil;

public class LocationDao1 {
	
	  private String message;
	  private String URL = "jdbc:mysql://localhost:3306/1?serverTimezone=GMT&characterEncoding=utf8";
	  //DB USER NAME
	  private String USER = "root";
	  //DB PASSWORD
	  private String PASSWORD = "3306";
	  private Connection conn;
	  private Statement stmt;
	  public LocationDao1() {
			try {
		          //1.������������
		    	  Class.forName("com.mysql.jdbc.Driver");
			      //2. ������ݿ�����
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.�������ݿ⣬ʵ����ɾ�Ĳ�
			      stmt = conn.createStatement();
			      
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  }
	  public List<Location1> queryAll() throws SQLException {
		  String sql="select* from ר�� ";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<Location1> locations1 = new ArrayList<Location1>();
		  while(rs.next()) {
			Location1 l = new Location1(rs.getInt(1), rs.getString(2), rs.getString(3),
					rs.getString(4) ,rs.getString(5),rs.getInt(6)/*
					 *,rs.getString(6),rs.getString(7),rs.getString(8),rs.getString
									 * (9),rs.getString(10)
									 */);
			  locations1.add(l);
		  }
		  return locations1;
	}
	public List queryCampusProportion() throws SQLException{
		ResultSet rs = stmt.executeQuery("select ����, count(id) as 'count' from ר�� group by ����;");
		List<Map> list = new ArrayList<Map>();
		while(rs.next()) {
			Map<String,Object> m = new HashMap<String,Object>();
			m.put("name",rs.getString(1));
			m.put("value",rs.getInt(2));
			list.add(m);
		}
		return list;
	}
	public void add(String name, String lng, String lat,String detail,int a) throws SQLException {
	    String sql  = "insert into ר��  values(default,'"+name+"','"+lng+"','"+lat+"','"+detail+"','"+a+"')";
	    stmt.execute(sql);
	}
	public void delete(String id) throws SQLException {
		String sql = "delete from ������  where id=" + id;
		stmt.execute(sql);
	}
	public void update(String id, String name, String lng, String lat,String detail, String university, String campus) throws SQLException {
		String sql = "update location set location_name='" + name + "',location_lng=" + lng + ", location_lat=" + lat + ", location_detail='" + detail + "', location_university='" + university + "', location_campus='" + campus + "' where location_id=" + id;
		stmt.execute(sql);
	}
}
