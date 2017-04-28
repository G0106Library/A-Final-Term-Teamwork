
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import="dao.BE.daoBEChattingRoom" %>
<%@ page import="vo.BE.voChattingRoom"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Table</title>
		<link rel="stylesheet" href="../css/H_Table/myTable.css" media="all" />
		<link rel="stylesheet" href="../css/H_Table/global.css" media="all">
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
		<link rel="stylesheet" href="../css/H_Table/table.css" />
	</head>
	<body>
		<%
			daoBEChattingRoom chattingRoom=new daoBEChattingRoom();
		    ArrayList<voChattingRoom> crList=new ArrayList<voChattingRoom>();
		    crList=chattingRoom.queryAllChattingRooms();
	 	%>
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
		<div>	
			<fieldset class="layui-elem-field">
				<legend>研讨室列表</legend>
				<div class="layui-field-box layui-form">
					<table class="layui-table admin-table">
						<thead>
							<tr>
								<th>编号</th>
		                           <th>楼层</th>
		                           <th>容量</th>
		                           <th>开放时间</th>
		                           <th>关闭时间</th>
		                           <th>操作</th>
							</tr>
						</thead>
						<tbody id="content">
						<%
			         	   	for(int i=0;i<crList.size();i++){
				           		voChattingRoom voCR=(voChattingRoom)crList.get(i);
				                String crNo=voCR.getChattingRoomNo();
				                String floor=voCR.getFloor();
				                int capacity=voCR.getCapacity();
				                String opentime=voCR.getOpentime_h()+" : "+voCR.getOpentime_m();
				                String closetime=voCR.getClosetime_h()+" : "+voCR.getClosetime_m();
				                int status=voCR.getStatus();     	
			             %>
			                <tr>
			                
			                <td>
			                <form name="delCRForm" action="../servlet/servDelChattingRoom" method="post">
			                	<input type="text" name="CRNo" value="<%= crNo %>" style="border:0;"size="2" readonly></td>
			                <td><%= floor %></td>
			                <td><%= capacity %></td>
			                <td><%= opentime %></td>
			                <td><%= closetime %></td>
			             <%
			                	if(status==1){
			             %>
			                <td><button name="delCR" class="layui-btn layui-btn-small">
			                	删除<input type="submit" value="" style="BACKGROUND-COLOR: transparent;border:0">
			                	</button>
			                </td></form>
			                
			             <%
			                	}
			                	else{
			             %>	
			             	<td>使用中,不可删除</td>
			              </form>
			             <%
			               		}  
			             %>     
			                </tr>
		                 <%
		                 }
		                 %>
						</tbody>
					</table>
				</div>
			</fieldset>
		</div>
	</body>
</html>