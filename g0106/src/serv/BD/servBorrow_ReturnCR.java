package serv.BD;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BE.daoBEChattingRoom;

public class servBorrow_ReturnCR extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String crNo=request.getParameter("CRNo");
		int st=Integer.parseInt(request.getParameter("status"));
		int stat=1;
		if(st==1){
			stat=0;//��Ϊ0
		}
		System.out.println("״̬�޸�Ϊ��"+stat);
		try {
			daoBEChattingRoom cr=new daoBEChattingRoom();
			boolean flag=cr.borrow_returnCR(crNo,stat);
			if(flag){
	    		out.print("<script type='text/javascript'>alert('�����ɹ�');window.location.href='../jsp/H_SearchChattingRoom.jsp';</script>");	
	    	}
	    	else{
	    		out.print("<script type='text/javascript'>alert('����ʧ��');window.location.href='../jsp/H_SearchChattingRoom.jsp';</script>");	
	    	}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
