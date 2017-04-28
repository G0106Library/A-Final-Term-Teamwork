<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>更新研讨室</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta charset="utf-8" />
  <link rel="stylesheet" href="../css/H_Form/myForm.css"/>
  <link rel="stylesheet" href="../css/H_Table/myTable.css" media="all" />
  <link rel="stylesheet" href="../css/H_Table/global.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
  <link rel="stylesheet" href="../css/H_Table/table.css" />
  </head>
  
  <body>
    <div class="admin-main">
		<blockquote class="layui-elem-quote">
			<a href="H_SearchChattingRoom.jsp" class="layui-btn layui-btn-small">
					<i class="layui-icon">&#xe608;</i> 借还研讨室
			</a>
			<a href="H_AddChattingRoom.jsp" class="layui-btn layui-btn-small" id="add">
				<i class="layui-icon">&#xe608;</i> 新增研讨室
			</a>
			<a href="H_DelChattingRoom.jsp" class="layui-btn layui-btn-small">
				<i class="layui-icon">&#xe608;</i> 删除研讨室
			</a>
				
			<a href="H_UpdChattingRoom.jsp" class="layui-btn layui-btn-small" id="add">
				<i class="layui-icon">&#xe608;</i> 更改研讨室
			</a>
			<a href="javascript:location.reload();" class="layui-btn layui-btn-small" id="search">
				<i class="layui-icon">&#xe615;</i> 刷新
			</a>
		</blockquote>
	</div>
  </body>
</html>