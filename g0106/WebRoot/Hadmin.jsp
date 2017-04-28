<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery1.js"></script>   
</head>
<body style="background-color:#f2f9fd">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/g.jpg" class="radius-circle rotate-hover" height="50" alt="" />高校图书馆后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="index.jsp" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.html"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>图书管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>图书查询</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>图书添加</a></li>
    <li><a href="page.html" target="right"><span class="icon-caret-right"></span>图书修改</a></li>  
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>图书删除</a></li>   
  </ul>   
    <h2><span class="icon-user"></span>读者管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>读者查询</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>读者添加</a></li>
    <li><a href="page.html" target="right"><span class="icon-caret-right"></span>读者修改</a></li>  
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>读者删除</a></li>   
  </ul>  
    <h2><span class="icon-user"></span>员工管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>员工查询</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>员工添加</a></li>
    <li><a href="page.html" target="right"><span class="icon-caret-right"></span>员工修改</a></li>  
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>员工删除</a></li>   
  </ul>  
    <h2><span class="icon-user"></span>架台管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>架台查询</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>架台添加</a></li>
    <li><a href="page.html" target="right"><span class="icon-caret-right"></span>架台修改</a></li>  
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>架台删除</a></li>   
  </ul>  
    <h2><span class="icon-user"></span>研讨室管理</h2>
  <ul style="display:block">
    <li><a href="jsp/H_SearchChattingRoom.jsp" target="right"><span class="icon-caret-right"></span>借还研讨室</a></li>
    <li><a href="jsp/H_AddChattingRoom.jsp" target="right"><span class="icon-caret-right"></span>新增研讨室</a></li>
    <li><a href="jsp/H_DelChattingRoom.jsp" target="right"><span class="icon-caret-right"></span>删除研讨室</a></li>  
    <li><a href="jsp/H_UpdChattingRoom.jsp" target="right"><span class="icon-caret-right"></span>更改研讨室</a></li>   
  </ul>  
    <h2><span class="icon-user"></span>作者管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>图书作者查询</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>图书作者添加</a></li>
    <li><a href="page.html" target="right"><span class="icon-caret-right"></span>图书作者修改</a></li>  
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>图书作者删除</a></li>   
  </ul> 
   <h2><span class="icon-user"></span>主题词管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>主题词添加</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>研讨室删除</a></li>  
  </ul>  
    <h2><span class="icon-user"></span>分类管理</h2>
  <ul style="display:block">
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>一级分类管理</a></li>
    <li><a href="pass.html" target="right"><span class="icon-caret-right"></span>二级分类管理</a></li>  
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>图书借阅管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>借阅单查询</a></li>
    <li><a href="add.html" target="right"><span class="icon-caret-right"></span>借阅单修改</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>借阅单添加</a></li>        
  </ul> 
    <h2><span class="icon-pencil-square-o"></span>图书丢失管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>丢失单查询</a></li>
    <li><a href="add.html" target="right"><span class="icon-caret-right"></span>丢失单修改</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>丢失单添加</a></li>        
  </ul>
    <h2><span class="icon-pencil-square-o"></span>图书采购管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>采购单查询</a></li>
    <li><a href="add.html" target="right"><span class="icon-caret-right"></span>采购单修改</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>采购单添加</a></li>        
  </ul> 
    <h2><span class="icon-pencil-square-o"></span>图书上架管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>上架单查询</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>上架单添加</a></li>        
  </ul>
    <h2><span class="icon-pencil-square-o"></span>图书下架管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>下架单查询</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>下架单添加</a></li>        
  </ul>
    <h2><span class="icon-pencil-square-o"></span>研讨室登记管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>登记单查询</a></li>
    <li><a href="add.html" target="right"><span class="icon-caret-right"></span>登记单修改</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>登记单添加</a></li>        
  </ul>
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>