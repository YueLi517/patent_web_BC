package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.Location;

public class LocationDao {
	  private String message;
	  private String URL = "jdbc:mysql://localhost:3306/1?serverTimezone=GMT&characterEncoding=utf8";
	  //DB USER NAME
	  private String USER = "root";
	  //DB PASSWORD
	  private String PASSWORD = "3306";
	  private Connection conn;
	  private Statement stmt;
	  public LocationDao() {
			try {
		          //1.加载驱动程序
		    	  Class.forName("com.mysql.jdbc.Driver");
			      //2. 获得数据库连接
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.操作数据库，实现增删改查
			      stmt = conn.createStatement();
			      
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  }
	  public List<Location> queryAll() throws SQLException {
		  String sql="select* from 待受理";
		  ResultSet rs = stmt.executeQuery(sql);
		  List<Location> locations = new ArrayList<Location>();
		  while(rs.next()) {
			  Location l = new Location(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
			  locations.add(l);
		  }
		  return locations;
	}
	public List queryCampusProportion() throws SQLException{
		ResultSet rs = stmt.executeQuery("select 职务, count(id) as 'count' from new_table group by 职务;");
		List<Map> list = new ArrayList<Map>();
		while(rs.next()) {
			Map<String,Object> m = new HashMap<String,Object>();
			m.put("name",rs.getString(1));
			m.put("value",rs.getInt(2));
			list.add(m);
		}
		return list;
	}
	public void add(String locationName, String lng, String lat,String detail, String university, String campus, String include, String userid, String c) throws SQLException {
	    String sql  = "insert into 待受理   values (default,'"+locationName+"','"+lng+"','"+lat+"','"+detail+"','"+ university + "','"+ campus +"','"+include+"','"+userid+"','"+c+"')";
	    stmt.execute(sql);
	}
	public void delete(String id) throws SQLException {
		String sql = "delete from 待受理 where id=" + id;
		stmt.execute(sql);
	}
	public void update(String id, String name, String lng, String lat,String detail, String university, String campus) throws SQLException {
		String sql = "update location set location_name='" + name + "',location_lng=" + lng + ", location_lat=" + lat + ", location_detail='" + detail + "', location_university='" + university + "', location_campus='" + campus + "' where location_id=" + id;
		stmt.execute(sql);
	}
}
