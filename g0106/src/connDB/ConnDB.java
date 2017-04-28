package connDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnDB {
private Connection conn = null;
	
	/*** 创建连接  ***/
	/*** 无参连接 ****/
	private void createConn()
	{		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@210.35.205.2:1521:db201701";
		String userName = "G0106";
		String passWord = "p888888";
		if (conn == null)
		{
			try {
				Class.forName(driver);
				conn=DriverManager.getConnection(url,userName,passWord); 				
				System.out.println("数据库连接成功！");
			    } 
			catch (ClassNotFoundException e) {
				e.printStackTrace();
			    } 
			catch (SQLException e) {
				System.out.println("数据库连接失败！");
				e.printStackTrace();
			    }  
		}		
	}

	/***获取连接***/
	public Connection getConn(){
		if (conn == null) {
			createConn();
		}
		return conn;
	}

    /*** 提交事务 ***/
	 public void commitConn()
	 {
		try {
			conn.commit();			
		} catch (SQLException e){
			System.out.println("提交异常！");
		}
	 }
	 
	 /*** 回滚事务 ***/
	 public void rollbackConn()
	 {
		try {
			conn.rollback();			
		} catch (SQLException e){
			System.out.println("提交异常！");
		}
	 }
	 
	 /*** 关闭连接 ***/
	 public void closeConn()
	 {
		try {
			conn.close();
			conn = null;
		} catch (SQLException e){
			e.printStackTrace();
		}
	 }
}
