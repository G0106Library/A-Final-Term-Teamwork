<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>个人中心</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/table.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="../css/chocolat.css" type="text/css" media="screen"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Progress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="。./js/modernizr.custom.97074.js"></script>
<script src="../js/jquery-1.8.3.min.js"></script>
<!---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){     
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
<!---->

</head> 
<!--banner-->
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
        <h1>个人中心<br></h1><br>
    </header>

    <div class="container" style="margin-top:50px;">
    <div class="row clearfix">
        <div class="col-md-6 column">
             <nav>
                <h3>
                   查看个人信息
                </h3>
             </nav>
            <table class="table"  id="myTable">
                <thead>
                    <tr>    <th> </th>     <th> </th>   </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>用户姓名 </td> <td>史瑞克</td>
                    </tr>
                    <tr>
                        <td>用户性别 </td> <td>男</td>
                    </tr>
                    <tr>
                        <td>出生日期 </td> <td>2007</td>
                    </tr>
                    <tr>
                        <td>联系电话</td> <td>88688688688</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-6 column">
            <nav><h3> 修改个人信息</h3></nav>
            <nav>   </nav>  <nav>   </nav>
            <nav> <p><a class="btn btn-primary btn-large" href="#">修改个人密码</a></p><br></nav>
            <nav> <p><a class="btn btn-primary btn-large" href="#">修改联系电话</a></p></nav>
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
         <div class="clearfix"></div>
     </div>
</div>

<div>
    
</div>

<!---->
<script type="text/javascript">
        $(document).ready(function() {
                /*
                var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
                };
                */
        $().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
</body>
</html>