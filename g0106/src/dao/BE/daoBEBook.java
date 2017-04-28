package dao.BE;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.BE.voBook;

import connDB.ConnDB;

public class daoBEBook {
	ConnDB con= new ConnDB();
	public ArrayList sqlBook(String SearchMethod,String SearchBook){
		ArrayList bookList=new ArrayList();
		ResultSet rs = null;
		PreparedStatement psmt = null;
		String sql=null;
		if(SearchMethod.equals("name")){
			sql="select a.bookISBN,a.bookPrice,a.bookName,b.keyword,d.publishName,a.publishDate from BEBook a,BESubject b,BEBookSubject c,BEPublish d where a.bookISBN=c.bookISBN and c.bookISBN=b.bookISBN and a.publishNo=d.publishNo and a.bookName like ?";
		}else if(SearchMethod.equals("isbn")){
			sql="select a.bookISBN,a.bookPrice,a.bookName,b.keyword,d.publishName,a.publishDate from BEBook a,BESubject b,BEBookSubject c,BEPublish d where a.bookISBN=c.bookISBN and c.bookISBN=b.bookISBN and a.publishNo=d.publishNo and a.ISBN like ?";
			//sql= "select * from BEBook  where ISBN like ?";
		}else if(SearchMethod.equals("subject")){
			sql="select a.bookISBN,a.bookPrice,a.bookName,b.keyword,d.publishName,a.publishDate from BEBook a,BESubject b,BEBookSubject c,BEPublish d where a.bookISBN=c.bookISBN and c.bookISBN=b.bookISBN and a.publishNo=d.publishNo and b.keyword like ?";
			//sql= "select * from BESubject where keyword  like ?";
		}else if(SearchMethod.equals("author")){
			//sql="select a.bookISBN,a.bookPrice,a.bookName,b.keyword,d.publishName,a.publishDate from BEBook a,BESubject b,BEBookSubject c,BEPublish d where a.bookISBN=c.bookISBN and c.bookISBN=b.bookISBN and a.publishNo=d.publishNo and b.keyword like ?";

			//sql= "select * from BEAuthor where authorName like ?";
		}else if(SearchMethod.equals("publishName")){
			sql="select a.bookISBN,a.bookPrice,a.bookName,b.keyword,d.publishName,a.publishDate from BEBook a,BESubject b,BEBookSubject c,BEPublish d where a.bookISBN=c.bookISBN and c.bookISBN=b.bookISBN and a.publishNo=d.publishNo and d.publishName like ?";
			//sql= "select * from BEPublish where publishName like ?";
		}
		try {
			psmt = con.getConn().prepareStatement(sql);
			psmt.setString(1, SearchBook);
			rs  = psmt.executeQuery();
			while (rs.next()){				
				voBook bookOne=new voBook();
				bookOne.setBookISBN(rs.getString("bookISBN"));
				bookOne.setBookName(rs.getString("bookName"));
				//bookOne.setAuthorName(rs.getString("authorName"));
				bookOne.setBookPrice(rs.getFloat("bookPrice"));
				bookOne.setKeyword(rs.getString("keyword"));
				bookOne.setMinorClassName(rs.getString("minorClassName"));
				bookOne.setPrimaryClassName(rs.getString("primaryClassName"));
				bookOne.setPublishDate(rs.getString("publishDate"));
				bookOne.setPublishName(rs.getString("publishName"));
				bookList.add(bookOne);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			con.commitConn();
			con.closeConn();
		}
		return bookList;
	}
	
	public ArrayList qryBookByName(String SearchBook){
		ArrayList bookList=new ArrayList();
		ResultSet rs = null;
		PreparedStatement psmt = null;
		String sql="select a.bookISBN,a.bookPrice,a.bookName,b.keyword,d.publishName,a.publishDate from BEBook a,BESubject b,BEBookSubject c,BEPublish d where a.bookISBN=c.bookISBN and c.bookISBN=b.bookISBN and a.publishNo=d.publishNo and a.bookName like ?";
		
		try {
			psmt = con.getConn().prepareStatement(sql);
			psmt.setString(1, SearchBook);
			rs  = psmt.executeQuery();
			while (rs.next()){
				voBook bookOne=new voBook();
				bookOne.setBookISBN(rs.getString("bookISBN"));
				bookOne.setBookName(rs.getString("bookName"));
				//bookOne.setAuthorName(rs.getString("authorName"));
				bookOne.setBookPrice(rs.getFloat("bookPrice"));
				bookOne.setKeyword(rs.getString("keyword"));
				//bookOne.setMinorClassName(rs.getString("minorClassName"));
				//bookOne.setPrimaryClassName(rs.getString("primaryClassName"));
				bookOne.setPublishDate(rs.getString("publishDate"));
				bookOne.setPublishName(rs.getString("publishName"));
				bookList.add(bookOne);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			con.commitConn();
			con.closeConn();
		}
		return bookList;
	}
	
	
	
	
	

}
