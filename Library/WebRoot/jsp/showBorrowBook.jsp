<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
	<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="../css/bookclassstyle.css" />
<title>图书借阅</title>
<style type="text/css">
#tableBox{
	width:1000px;
	margin:0 auto;
}
#myTable{
	width:100%;
border-collapse:collapse; 
}

#myTable td{
	text-align:center;

	font-size:14px;
	height:35px;
	width:auto;
	font-weight:bold;
	background-color:white;
	opacity:0.5;
}
#myTable tr:hover{
background-color:#FFDEAD;
opacity:0.7;
}
#myTable th{
text-align:center;

width:auto;
height:50px;
font-size:16px;
line-height:40px;
font-weight:bold;
	background-color:black;
	opacity:0.7;
	color:#fff;

}
.ToBorrow{
	border:none;
	height:25px;
	width:50px;
	color:white;
	background-color: black;
	border-radius: 4px;
}
.indexNo{
	border:none;
	background-color: transparent;
	text-align:center;
}
</style>
<script type="text/javascript">

function check(){
	var rs=confirm("是否续借？");
	if (rs==true){
		document.borrowForm.submit();
	  alert("续借成功！");
	}
	else{
	  alert("已取消续借！");
	}
}

</script>
</head>

<body onload="changeTableBg()">
<div id="home" class="banner">	
	  	<div class="header">
			 <div class="container">
				 <div class="logo">
					<a href="../index.html"><img src="../images/logo2.jpg" width="700px" height="100px"></a>
	                <input type="button" class="mylogin" value="我的图书馆" align="right" onclick="window.open('../jsp/login.html')" >
	                <input type="text" class="loginstate" id="loginstate" value="您还未登录" readonly>
				 </div>
			 </div>
	 	</div>



    <div id="tableBox" style="margin-top:100px;">
    	<table id="myTable" cellspacing="0" cellpadding="0">
          <tr>
            <th>图书名称</th>
            <th>索书号</th>
            <th>作者</th>
            <th>借阅日期</th>
            <th>应还日期</th>
            <th> </th>
          </tr>
          <form action="#" method="post" name="borrowForm">
          <tr>
            <td>《人工智能的未来》<input type="hidden" value="isbn"/></td>
            <td><input type="text" name="indexBookNo" class="indexNo" value="02372962" readOnly/></td>
            <td>雷·库兹韦尔</td>
            <td>2017-2-26</td>
            <td>2017-3-28</td>
            <td><input type="button" class="ToBorrow" value="续借" onclick="check()"/></td>
          </tr>
          </form>
          <tr>
            <td>Data</td>
            <td>Data</td>
            <td>Data</td>
            <td>Data</td>
            <td>Data</td>
            <td>Data</td>
          </tr>
       </table>
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
		 <div class="clearfix"></div>
	 </div>
</div>
</body>
</html>