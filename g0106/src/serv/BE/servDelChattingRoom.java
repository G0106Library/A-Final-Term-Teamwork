package serv.BE;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BE.daoBEChattingRoom;

public class servDelChattingRoom extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String crNo=request.getParameter("CRNo");
		System.out.println("Ҫɾ�����������ǣ�"+crNo);
		daoBEChattingRoom cr=new daoBEChattingRoom();
		boolean flag;
		try {
			flag = cr.delChattingRoom(crNo);
			if(flag){
	    		out.print("<script type='text/javascript'>alert('ɾ���ɹ�');window.location.href='../jsp/H_DelChattingRoom.jsp';</script>");	
	    	}
	    	else{
	    		out.print("<script type='text/javascript'>alert('ɾ��ʧ��');window.location.href='../jsp/H_DelChattingRoom.jsp';</script>");	
	    	}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}