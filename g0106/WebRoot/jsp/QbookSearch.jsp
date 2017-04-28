<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*,vo.BE.*,dao.BE.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>图书查询</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="../css/bookclassstyle.css" />
    <link rel="stylesheet" href="../css/bookSearch.css" />
    <script>
    function check(){
		var bn=document.bookForm.book.value;
		if(bn==""){
			alert("查询不能为空！");
		}else{
			document.bookForm.submit();
		}		
	}
    </script>
  </head>
  <body>
  	<div id="home" class="banner">	
	  	<div class="header">
			 <div class="container">
				 <div class="logo">
					<a href="../index.jsp"><img src="../images/logo2.jpg" width="700px" height="100px"></a>
	                <input type="button" class="mylogin" value="我的图书馆" align="right" onclick="window.open('../jsp/login.html')" >
	                <input type="text" class="loginstate" id="loginstate" value="您还未登录" readonly>
				 </div>
			 </div>
	 	</div>
	 	
	 	
	 	
	 	<div class="container" style="padding-top:100px">
	 		<div class="searchBox" >
		      <form name="bookForm" method="post" action="../servlet/servBookSearch">
		        <select name="select" id="my-menu">
		        <option value="name" selected>图书名称</option>
		        <option value="isbn">图书ISBN</option>
		        <option value="subject">图书主题</option>
		        <option value="author">作者姓名</option>
		        <option value="author">出版社名</option>
		        </select>
		        <input type="text" name="book" class="bookInput" placeholder="在这里搜索..." >
		        <input type="button" class="bookSubmit" onClick="check()">
		      </form>
			</div>
			<%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				ArrayList bookList=new ArrayList();
				bookList=(ArrayList)session.getAttribute("books");
				if(session.getAttribute("flag")=="true"){
				if(bookList.isEmpty()==false){				
			 %>
			<div>
			<table>
			<tr><th>图书名称</th><th>图书ISBN</th><th>图书主题</th><th>作者姓名</th><th>出版社名</th><th>出版日期</th></tr>
			<%
				for(int i=0;i<bookList.size();i++){
			 %>
			 <tr>
				 <td><%=((voBook)(bookList.get(i))).getBookName() %></td>
				 <td><%=((voBook)(bookList.get(i))).getBookISBN() %></td>
				 <td><%=((voBook)(bookList.get(i))).getKeyword() %></td>
				 <td><%=((voBook)(bookList.get(i))).getBookName() %></td>
				 <td><%=((voBook)(bookList.get(i))).getPublishName() %></td>
				 <td><%=((voBook)(bookList.get(i))).getPublishDate() %></td>
			 </tr>
			 <%
			 }
			 	}
			 }
			 session.setAttribute("flag", "false");
			  %>
			</table>
			</div>
	 	</div>
	 </div>

    <script src="../js/jquery.js"></script>
	<script src="../js/jquery.fancyspinbox.js"></script>
    <script>
    $('#my-menu').fancyspinbox();
    </script>
    
    
    <div class="footer">
	 <div class="container">
		 <div class="copywrite">
			 <p>Copyright &copy; G0106-朱志杰 李锦程 张芳艳 王严康 金霞 葛万鹏(2017-04-01)</p>
		 </div>
		 <div class="social">							
				<a href="#"><i class="facebook"></i></a>
				<a href="#"><i class="twitter"></i></a>
				<a href="#"><i class="dribble"></i></a>	
				<a href="#"><i class="google"></i></a>	
				<a href="#"><i class="youtube"></i></a>	
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
  </body>
</html>
