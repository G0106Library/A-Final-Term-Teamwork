package connDB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnDB {
private Connection conn = null;
	
	/*** ��������  ***/
	/*** �޲����� ****/
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
				System.out.println("���ݿ����ӳɹ���");
			    } 
			catch (ClassNotFoundException e) {
				e.printStackTrace();
			    } 
			catch (SQLException e) {
				System.out.println("���ݿ�����ʧ�ܣ�");
				e.printStackTrace();
			    }  
		}		
	}

	/***��ȡ����***/
	public Connection getConn(){
		if (conn == null) {
			createConn();
		}
		return conn;
	}

    /*** �ύ���� ***/
	 public void commitConn()
	 {
		try {
			conn.commit();			
		} catch (SQLException e){
			System.out.println("�ύ�쳣��");
		}
	 }
	 
	 /*** �ع����� ***/
	 public void rollbackConn()
	 {
		try {
			conn.rollback();			
		} catch (SQLException e){
			System.out.println("�ύ�쳣��");
		}
	 }
	 
	 /*** �ر����� ***/
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
