<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import="dao.BE.daoBEChattingRoom" %>
<%@ page import="vo.BE.voChattingRoom"%>
<!DOCTYPE HTML>
<html>
<head>
<title>研讨室使用状态</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/table.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Progress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="../js/modernizr.custom.97074.js"></script>
<script src="../js/jquery-1.8.3.min.js"></script>
<!---->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){     
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
</head>
<body>
<%
	daoBEChattingRoom chattingRoom=new daoBEChattingRoom();
    ArrayList<voChattingRoom> crList=new ArrayList<voChattingRoom>();
    crList=chattingRoom.queryAllChattingRooms();
 %>
	<div id="home" class="banner">   
	     <div class="header">
	         <div class="container">
	             <div class="logo">
	                <a href="../index.jsp"><img src="../images/logo2.jpg" width="700px" height="100px"></a>
	                <input type="button" class="mylogin" value="我的图书馆" align="right" onclick="window.open('loginindex/index.html')" >
	                <input type="text" class="loginstate" id="loginstate" value="您还未登录" readonly>
	             </div>
	         </div>
	     </div>  
	     <header>
	        <h1>研讨室使用状态</h1>
	    </header>
	
	    <div class="container" style="margin-top:50px;">
	        <div class="row clearfix">
	            <div class="col-md-12 column">  
	                 <table class="table"  id="myTable">
	                    <thead>
	                        <tr>
	                            <th>编号</th>
	                            <th>楼层</th>
	                            <th>容量</th>
	                            <th>开放时间</th>
	                            <th>关闭时间</th>
	                            <th>当前状态</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    <%
	                    for(int i=0;i<crList.size();i++){
	                    	voChattingRoom voCR=(voChattingRoom)crList.get(i);
	                    	String crNo=voCR.getChattingRoomNo();
	                    	String floor=voCR.getFloor();
	                    	int capacity=voCR.getCapacity();
	                    	String opentime=voCR.getOpentime_h()+" : "+voCR.getOpentime_m();
	                    	String closetime=voCR.getClosetime_h()+" : "+voCR.getClosetime_m();
	                    	String status=(voCR.getStatus()==1)?("空闲"):("已借出");
	                    	
	                    %>
	                    <tr>
	                    	<td><%= crNo %></td>
	                    	<td><%= floor %></td>
	                    	<td><%= capacity %></td>
	                    	<td><%= opentime %></td>
	                    	<td><%= closetime %></td>
	                    	<td><%= status %></td>
	                    </tr>
	                    <%
	                    }
	                    %>
	                    </tbody>
	            	</table>
	            </div>
	        </div>
	    </div>
	</div>
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
	         <div class="clearfix">
	         </div>
	     </div>
	</div> 
</body>
</html>