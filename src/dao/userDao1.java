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

import beans.user2;

public class userDao1 {
	  private String message;
	  private String URL = "jdbc:mysql://localhost:3306/1?serverTimezone=GMT&characterEncoding=utf8";
	  //DB USER NAME
	  private String USER = "root";
	  //DB PASSWORD
	  private String PASSWORD = "3306";
	  private Connection conn;
	  private Statement stmt;
	  public userDao1() {
			try {
		          //1.鍔犺浇椹卞姩绋嬪簭
		    	  Class.forName("com.mysql.jdbc.Driver");
			      //2. 鑾峰緱鏁版嵁搴撹繛鎺�
			      conn = DriverManager.getConnection(URL, USER, PASSWORD);
			      //3.鎿嶄綔鏁版嵁搴擄紝瀹炵幇澧炲垹鏀规煡
			      stmt = conn.createStatement();
			      
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	  }

	  public List<user2>queryAll(int a) throws SQLException {
		  String sql="select* from 专利  where 处理人 ="+a;
		  ResultSet rs = stmt.executeQuery(sql);
		  List<user2> user2 = new ArrayList<user2>();
		  while(rs.next()) {
			user2 l = new user2(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6)
					/* ,rs.getString(8) */);
			  user2.add(l);
		  }
		  return user2;
	}
	  public List queryCampusProportion(int b) throws SQLException{
		  String sql="select 类型, count(id) as 'count' from 专利    where 处理人= "+b+" group by 类型   ";  
			ResultSet rs = stmt.executeQuery(sql);
			List<Map> list = new ArrayList<Map>();
			while(rs.next()) {
				Map<String,Object> m = new HashMap<String,Object>();
				m.put("name",rs.getString(1));
				m.put("value",rs.getInt(2));
				list.add(m);
			}
			return list;
		}

	public void add(String id,  String mima,String name, String sex, String age,
			String job) throws SQLException {
	    String sql  = "insert into new_table  values(default,'"+id+"','"+mima+"','"+name+"','"+sex+"','"+ age + "','"+ job +"')";
	    stmt.execute(sql);
	}

	public void delete(String id) throws SQLException {
		   String sql = "delete from new_table where id=" + id;
		   stmt.execute(sql);
		  }
	public void update(String xuhao,String id, String name, String sex, String age,
			String job) throws SQLException {
		String sql = "update new_table set id='" + xuhao + "', username='" + id + "', 姓名='" + name + "', 性别='" + sex + "', 年龄='" + age + "', 职务='" + job + "' where id=" + xuhao;
		stmt.execute(sql);
	}
	/*
	 * public void add1(String id, String mima,String name, String sex, String age,
	 * String job,String job2) throws SQLException { String sql =
	 * "insert into 待受理  values(default,'"+id+"','"+mima+"','"+name+"','"+sex+"','"+
	 * age + "','"+ job +"','"+ job2+"')"; stmt.execute(sql); }
	 */
}