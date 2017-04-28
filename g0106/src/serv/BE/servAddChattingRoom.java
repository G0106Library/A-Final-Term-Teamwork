package serv.BE;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BE.daoBEChattingRoom;

public class servAddChattingRoom extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		//System.out.print("测试我的Servlet");
		String chattingRoomNo=request.getParameter("chattingRoomNo");
	    String sFloor=request.getParameter("chattingRoomFloor");
	    int floor=Integer.parseInt(sFloor);
	    int capacity=Integer.parseInt(request.getParameter("chattingRoomCap"));
	    String opentime_h=request.getParameter("crOpentime_h");
	    String opentime_m=request.getParameter("crOpentime_m");
	    String closetime_h=request.getParameter("crClosetime_h");
	    String closetime_m=request.getParameter("crClosetime_m");
	    int status=1;
	    if(chattingRoomNo!=null&&floor!=0&&capacity!=0&opentime_h!=null&&opentime_m!=null&&closetime_h!=null&&closetime_m!=null&&status!=0){
	    	daoBEChattingRoom cr=new daoBEChattingRoom();
	    	boolean j;
			try {
				j = cr.addNewChattingRoom(chattingRoomNo, floor, capacity, opentime_h, opentime_m, closetime_h, closetime_m, status);
				if(j){
		    		out.print("<script type='text/javascript'>alert('添加成功');window.location.href='../jsp/H_AddChattingRoom.jsp';</script>");	
		    	}
		    	else{
		    		out.print("<script type='text/javascript'>alert('添加失败');window.location.href='../jsp/H_AddChattingRoom.jsp';</script>");	
		    	}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    }
	}

}
