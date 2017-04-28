<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>用户登陆</title>
<link rel="stylesheet" href="../css/loginstyle.css">
</head>

<body>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<body>
 
<div class="cotn_principal">
<div class="header">
	<div class="container">
		<div class="logo">
			<a href="../index.jsp"><img src="../images/logo3.jpg" width="900px" height="130px"></a>
		</div>
	</div>
 </div>
  <div class="cont_centrar">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>读者</h2>
            <h2>Reader</h2>
            <p>书迹即心迹，书品即人品。</p>
            <br>
            <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>管理员</h2>
            <h2>Administrator</h2>
            <p>无知并非纯真，而是罪恶。</p>
            <br>
            <button class="btn_sign_up" onclick="cambiar_sign_up()">LOGIN</button>
          </div>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="../images/loginpo.jpg" alt="" /> </div>
      </div>
      
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="../images/loginpo.jpg" alt="" /> </div>
        
        <div class="cont_form_login"> <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
          <h2>读者登陆</h2>
          <form action="test.html" name="readerLoginForm" method="post">
              <input id="readerid" name="readerid" class="readerid" type="text" placeholder="Readerid" />
              <input id="readerpasswd" name="readerpasswd" class="readerpasswd" type="password" placeholder="Password" />
              <!--
              <button id="reader_login" class="btn_login" onclick="reader_login_checknull()">LOGIN</button>
              -->
              <input type="button" class="input_btn_login_reader" onClick="reader_login_checknull()" value="                            LOGIN">
              
           </form>
        </div>
        <div class="cont_form_sign_up"> <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <br>
          <br>
          <br>
          <h2>管理员登陆</h2>
          <form action="test.html" name="adminLoginForm" method="post">
              <input id="adminid" name="adminid" class="adminid"  type="text" placeholder="Adminid" />
              <input id="adminpasswd" name="adminpasswd" class="adminpasswd" type="password" placeholder="Password" />
              <!--
              <button id="admin_login" class="btn_sign_up" onclick="cambiar_login()">LOGIN</button>
              -->
              <input type="button" class="input_btn_login_admin" onClick="admin_login_checknull()" value="                            LOGIN">
              
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="../js/loginjs.js"></script>
</body>

</body>
</html>
