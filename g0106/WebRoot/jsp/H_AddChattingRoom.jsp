<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <title>新增研讨室</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta charset="utf-8" />
  <link rel="stylesheet" href="../css/H_Form/myForm.css"/>
  <link rel="stylesheet" href="../css/H_Table/myTable.css" media="all">
  <link rel="stylesheet" href="../css/H_Table/global.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
  <link rel="stylesheet" href="../css/H_Table/table.css" />
  <script type="text/javascript">
  	//验证研讨室编号
  	function checkCRNo(){
		var crNo=document.getElementById("chattingRoomNo").value;
		var reg=/[A-Z]/
		if(!reg.test(crNo)){  	
	  		divCRNo.innerHTML='<font class="tips_false">编号为单个字母</font>';
	  		document.getElementById("flagNo").value="0";
	  	}
	  	else{
	  		document.getElementById("chattingRoomNo").value=crNo.toUpperCase();
	  		divCRNo.innerHTML='<font class="tips_true">输入正确</font>';
	  		document.getElementById("flagNo").value="1";
	  	}  
	 }
	 //验证研讨室楼层
	 function checkCRFloor(){
		var crFloor=document.getElementById("chattingRoomFloor").value;
		var reg=/^[1-9]\d*$|^0$/; 
		if(!(reg.test(crFloor)&&crFloor>1&&crFloor<6)){  	
	  		divCRFloor.innerHTML='<font class="tips_false">楼层在2-5之间</font>';
	  		document.getElementById("flagFloor").value="0";
	  	}
	  	else{
	  		divCRFloor.innerHTML='<font class="tips_true">输入正确</font>';
	  		document.getElementById("flagFloor").value="1";
	  	}  
	 }
	 
	 //验证研讨室容量
	 function checkCRCap(){
		var crCap=document.getElementById("chattingRoomCap").value;
		var reg=/^[1-9]\d*$|^0$/; 
		if(!(reg.test(crCap)&&crCap>0&&crCap<51)){
	  		divCRCap.innerHTML='<font class="tips_false">容量在1-50之间</font>';
	  		document.getElementById("flagCap").value="0";
	  	}
	  	else{
	  		divCRCap.innerHTML='<font class="tips_true">输入正确</font>';
	  		document.getElementById("flagCap").value="1";
	  	}  
	 }
	 
	 //验证研讨室开放时间
	 function checkTime(){
	 	var open_h=document.getElementById("crOpentime_h").value;
	 	var open_m=document.getElementById("crOpentime_m").value;
	 	var close_h=document.getElementById("crClosetime_h").value;
	 	var close_m=document.getElementById("crClosetime_m").value;
	 	var reg=/[0-9][0-9]/;
	 	var reg1=/[0-9]/;
	 	//开放的
	 	if(open_h.length<3&&(reg1.test(open_h)||reg.test(open_h))&&parseInt(open_h)>=0&&parseInt(open_h)<24){//小时
	 		if(open_h.length==1){
	 			document.getElementById("crOpentime_h").value="0"+open_h;
	 		}
	 		divCROpentime.innerHTML='<font class="tips_true"></font>';
	 		document.getElementById("flagOpen").value="1";
	 	}
	 	else{
	 		divCROpentime.innerHTML='<font class="tips_false">时间格式不对</font>';
	 		document.getElementById("flagOpen").value="0";
	 		return;
	 	}
	 	if(open_m.length<3&&(reg1.test(open_m)||reg.test(open_m))&&parseInt(open_m)>=0&&parseInt(open_m)<60){//2位数字
	 		if(open_m.length==1){
	 			document.getElementById("crOpentime_m").value="0"+open_m;
	 		}
	 		divCROpentime.innerHTML='<font class="tips_true"></font>';
	 		document.getElementById("flagOpen").value="1";
	 	}
	 	else{
	 		divCROpentime.innerHTML='<font class="tips_false">时间格式不对</font>';
	 		document.getElementById("flagOpen").value="0";
	 	}
	 	
	 	//关闭的
	 	if(close_h.length<3&&(reg1.test(close_h)||reg.test(close_h))&&parseInt(close_h)>=0&&parseInt(close_h)<24){//小时
	 		if(close_h.length==1){
	 			document.getElementById("crClosetime_h").value="0"+close_h;
	 		}
	 		divCRClosetime.innerHTML='<font class="tips_true"></font>';
	 		document.getElementById("flagClose").value="1";
	 	}
	 	else{
	 		divCRClosetime.innerHTML='<font class="tips_false">时间格式不对</font>';
	 		document.getElementById("flagClose").value="0";
	 		return;
	 	}
	 	if(close_m.length<3&&(reg1.test(close_m)||reg.test(close_m))&&parseInt(close_m)>=0&&parseInt(close_m)<60){//2位数字
	 		if(close_m.length==1){
	 			document.getElementById("crClosetime_m").value="0"+close_m;
	 		}
	 		divCRClosetime.innerHTML='<font class="tips_true"></font>';
	 		document.getElementById("flagClose").value="1";
	 	}
	 	else{
	 		divCRClosetime.innerHTML='<font class="tips_false">时间格式不对</font>';
	 		document.getElementById("flagClose").value="0";
	 	}
	 
	 }
	 
	 //验证表单提交
	 function addCR(){
	 	var flagNo=parseInt(document.getElementById("flagNo").value);
	 	var flagFloor=parseInt(document.getElementById("flagFloor").value);
	 	var flagCap=parseInt(document.getElementById("flagCap").value);
	 	var flagOpen=parseInt(document.getElementById("flagOpen").value);
	 	var flagClose=parseInt(document.getElementById("flagClose").value);
	 	var flag=flagNo+flagFloor+flagCap+flagOpen+flagClose;
	 	//alert(flag);
	 	if(flag<5){
	 		alert("请正确填写每项信息!");
	 	}
	 	else{
	 		document.getElementById("addCRForm").submit();
	 		//alert("表单输入完全正确");
	 	} 
	 } 
  </script>
  </head>
  
  <body>
  <div class="admin-main">
		<blockquote class="layui-elem-quote">
			<a href="H_SearchChattingRoom.jsp" class="layui-btn layui-btn-small">
					<i class="layui-icon">&#xe608;</i>借还研讨室
			</a>
			<a href="H_AddChattingRoom.jsp" class="layui-btn layui-btn-small" id="add">
				<i class="layui-icon">&#xe608;</i>新增研讨室
			</a>
			<a href="H_DelChattingRoom.jsp" class="layui-btn layui-btn-small">
				<i class="layui-icon">&#xe608;</i>删除研讨室
			</a>
				
			<a href="H_UpdChattingRoom.jsp" class="layui-btn layui-btn-small" id="add">
				<i class="layui-icon">&#xe608;</i>更改研讨室
			</a>
			<a href="javascript:location.reload();" class="layui-btn layui-btn-small" id="search">
				<i class="layui-icon">&#xe615;</i> 刷新
			</a>
		</blockquote>
	</div>
	
	<div class="contact" align="left">
		<form name="addCRForm" id="addCRForm" action="../servlet/servAddChattingRoom" method="post">
			<ul>
				<li>
					<label>编号</label>
					<input type="text" name="chattingRoomNo" id="chattingRoomNo" placeholder="请输入研讨室编号"  onblur="checkCRNo()" required/>
					<span class="tips" id="divCRNo">编号为单个字母</span>
					<input type="hidden" name="flagNo" id="flagNo" value="0">
				</li>
				<li>
					<label>楼层</label>
					<input type="text" name="chattingRoomFloor" id="chattingRoomFloor" placeholder="请输入研讨室楼层" onblur="checkCRFloor()" required/>
					<span class="tips" id="divCRFloor">楼层在2-5之间</span>
					<input type="hidden" name="flagFloor"  id="flagFloor" value="0">
				</li>
				<li>
					<label>容量</label>
					<input type="text" name="chattingRoomCap" id="chattingRoomCap"  placeholder="请输入研讨室容量" onblur="checkCRCap()" required/>
					<span class="tips" id="divCRCap">容量在1-50之间</span>
					<input type="hidden" name="flagCap" id="flagCap" value="0">
				</li>
				
				<li>
					<label>开放时间</label>
					<input type="text"  name="crOpentime_h" id="crOpentime_h" value="08" onblur="checkTime()" style="width:50px;" required />
					点<input type="text" name="crOpentime_m" id="crOpentime_m"  value="00" onblur="checkTime()" style="width:50px;" required/>
					分<span class="tips" id="divCROpentime"></span>
					<input type="hidden" name="flagOpen" id="flagOpen" value="1">
				</li>
				
				<li>
					<label>关闭时间</label>
					<input type="text"  name="crClosetime_h" id="crClosetime_h" value="20"  onblur="checkTime()" style="width:50px;" required />
					点<input type="text" name="crClosetime_m" id="crClosetime_m"  value="30" onblur="checkTime()" style="width:50px;" required/>
					分<span class="tips" id="divCRClosetime"></span>
					<input type="hidden" name="flagClose" id="flagClose" value="1">
				</li>
			</ul>			
		</form>
		<ul>
			<li>
				<label>&nbsp</label>
				<button name="addCR" onclick="addCR()" class="layui-btn layui-btn-small">提交</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<button name="resetAddCR" onclick="window.location.reload(true)" class="layui-btn layui-btn-small">重置</button>			
			</li>	
		</ul>	
		
	</div>
</body>
</html>
