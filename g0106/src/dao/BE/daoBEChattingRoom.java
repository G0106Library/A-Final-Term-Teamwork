package dao.BE;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import connDB.ConnDB;
import vo.BE.voChattingRoom;
public class daoBEChattingRoom {
	ConnDB connDB=new ConnDB();
	//��ѯ����������
	public ArrayList<voChattingRoom> queryAllChattingRooms() throws Exception{
		PreparedStatement psmt = null;//��ֹSQLע��
		String sql="SELECT * FROM BECHATTINGROOM";
		ArrayList<voChattingRoom> voCRList=new ArrayList<voChattingRoom>();
		try{
			psmt=connDB.getConn().prepareStatement(sql);
			ResultSet rs=psmt.executeQuery();
			while(rs.next()){
				voChattingRoom voCR=new voChattingRoom();
				voCR.setChattingRoomNo(rs.getString(1));
				voCR.setFloor(rs.getString(2));
				voCR.setCapacity(rs.getInt(3));
				voCR.setOpentime_h(rs.getString(4));
				voCR.setOpentime_m(rs.getString(5));
				voCR.setClosetime_h(rs.getString(6));
				voCR.setClosetime_m(rs.getString(7));
				voCR.setStatus(rs.getInt(8));
				voCRList.add(voCR);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			connDB.commitConn();
			psmt.close();
			connDB.closeConn();
		}
		return voCRList;
	}
	//�軹������
	public boolean borrow_returnCR(String crNo,int stat) throws SQLException{//�軹������
		//System.out.print("dao����������״̬");
		//System.out.print(crNo);
		//System.out.print(stat);
		PreparedStatement psmt = null;
		String sql="UPDATE BECHATTINGROOM SET CHATTINGROOMSTATUS=? WHERE CHATTINGROOMNO=?";
		try{
			psmt=connDB.getConn().prepareStatement(sql);
			psmt.setInt(1,stat);
			psmt.setString(2,crNo);
			psmt.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
			return false;
		}finally{
			connDB.commitConn();
			psmt.close();
			connDB.closeConn();
		}
		return true;
	}
	//����������
	public boolean addNewChattingRoom(String chattingRoomNo,int floor,int capacity,String opentime_h,String opentime_m,String closetime_h,String closetime_m,int status) throws SQLException{
		PreparedStatement psmt = null;
		String sql="INSERT into BEChattingRoom values(?,?,?,?,?,?,?,?)";
		try{
			psmt=connDB.getConn().prepareStatement(sql);
			psmt.setString(1,chattingRoomNo);
			psmt.setInt(2,floor);
			psmt.setInt(3,capacity);
			psmt.setString(4,opentime_h);
			psmt.setString(5,opentime_m);
			psmt.setString(6,closetime_h);
			psmt.setString(7,closetime_m);
			psmt.setInt(8,status);
			psmt.executeUpdate();	
		}catch (SQLException e){
			e.printStackTrace();
			return false;
		}finally{
			connDB.commitConn();
			psmt.close();
			connDB.closeConn();
		}
		return true;
	}
	
	//ɾ��������
	public boolean delChattingRoom(String crNo) throws SQLException{
		PreparedStatement psmt = null;
		String sql="DELETE FROM BEChattingRoom WHERE CHATTINGROOMNO=?";
		try{
			psmt=connDB.getConn().prepareStatement(sql);
			psmt.setString(1, crNo);
			psmt.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
			return false;
		}finally{
			connDB.commitConn();
			psmt.close();
			connDB.closeConn();
		}
		return true;
	}
}
