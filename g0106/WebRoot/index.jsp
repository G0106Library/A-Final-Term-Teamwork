<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>信敏廉毅图书馆首页</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="css/bookclassstyle.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Progress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/modernizr.custom.97074.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
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
				<a href="index.html"><img src="images/logo2.jpg" width="700px" height="100px"></a>
                <input type="button" class="mylogin" value="我的图书馆" align="right" onclick="window.open('jsp/login.jsp')" >
                <input type="text" class="loginstate" id="loginstate" value="您还未登录" readonly>
			 </div>
		 </div>
	 </div>
	 <div class="top-menu">
		 <div class="container">
			 <nav class="cl-effect-1">
				<span class="menu"><img src="images/nav-icon.png" alt=""/></span>
			 <ul>
				 <li><a class="scroll" href="#home">Home</a></li>
				 <li><a class="scroll" href="#about">About</a></li>
				 <li><a class="scroll" href="#service">Services</a></li>
				 <li><a class="scroll" href="#gallery">Gallery</a></li>
				 <li><a class="scroll" href="#skills">&nbsp;&nbsp;Classes&nbsp;</a></li>
				 <li><a class="scroll" href="#testi">Masters</a></li>
				 <li><a class="scroll" href="#contact">Contact</a></li>
			 </ul>
             <ul>
				 <li><a class="scroll" href="#home">&nbsp;主&nbsp;页&nbsp;</a></li>
				 <li><a class="scroll" href="#about">概&nbsp;况</a></li>
				 <li><a class="scroll" href="#service">自助服务</a></li>
				 <li><a class="scroll" href="#gallery">经典好书</a></li>
				 <li><a class="scroll" href="#skills">图书分类</a></li>
				 <li><a class="scroll" href="#testi">名人堂</a></li>
				 <li><a class="scroll" href="#contact">友情链接</a></li>
			 </ul>
			 </nav>
		 </div>		 
         
         
         
		 <!-- script-for-menu -->
		 <script>					
					$("span.menu").click(function(){
						$(".top-menu ul").slideToggle("slow" , function(){
						});
					});
		 </script>
		 <!-- script-for-menu -->	

	 </div>
	 <div class="banner-info">
		 <div class="container">
			 <h2>办好了图书馆，就等于办好了大学的一半。</h2>
             <h2 align="right">——郭沫若</h2>
		 </div>
	 </div>
	 <div class="banner-form">
		 <div class="container">
			 <p>信敏廉毅图书馆</p>
             <p>-@-</p>
             <p>江西省南昌市青山湖区玉屏西大街666号</p>
			 <form>
				<input type="text" value="" placeholder="你有什么话想对我说？">

				<input type="submit" value="意见反馈">
			</form>
		 </div>
	 </div>
</div>
<!---->
<div id="about" class="about">
	 <div class="container">		 
		 <h3 class="abt">本馆概况</h3>
		 <div class="about-top">
			 <h3>馆长寄语</h3>
			<p>大学图书馆的重要性不言而喻。人才培养是高校的根本任务。我认为，大学生来到高校，有二个地方是最重要的：一是在课堂认真听课学习教材；二是到图书馆广泛阅读课外书籍。电影《罗马假日》有句话说得很有道理：“要么旅行，要么读书，身体和灵魂，必须有一个要在路上”。说的是强身健体和广泛阅读。读万卷书，行万里路。 </p>	
		 </div>
		 <div class="about-grids">
			 <div class="col-md-6 about-grid-info">
			     <h3>图书馆概况</h3>
				 <h4>信敏廉毅图书馆是一所信息资源丰富，服务全面的数字化图书馆。</h4>
				 <p> 信敏廉毅图书馆正式建馆于2016年。图书馆共设有办公室、采访部、编目部、技术部、信息咨询部、流通部、期刊部、阅览部、特藏部和麦庐园部，在编职工6人。目前馆藏纸质图书354.6万册，电子图书280万，数据库78个。</p> 
                                                      <p>读者服务方面，力求以满足师生需求为动力，增强服务精品意识，深入推进服务的系统化、专业化和多元化。 数字化图书馆建设方面，充分利用移动图书馆、图书馆微信、手机图书馆、智慧校园等平台，构建大数据网络环境下图书馆文献信息资源的交流，提升资源利用能力。
                                                      </p> 
				 <h4>规章制度</h4>
				 <p>入馆须知：读者凭本人校园卡入馆；联系工作凭介绍信及本人有效证件或经预约入馆。进入图书馆应注意言谈举止文明、着装整齐，不得穿背心、内短裤、拖鞋入馆。不得将生活用具或其它杂物带入馆内，禁止在馆内进餐、吃零食等。爱护书刊资料和公共设施，严禁涂抹、刻画、损坏公物。保持图书馆安静，禁止在馆内喧哗，入馆后请将手机调至震动挡。</p>
			 </div>
			 <div class="col-md-6 about-pic">
				 <img src="images/img1.jpg" class="img-responsive" alt=""/>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div id="service" class="service">
	 <div class="container">
		 <h3 class="ser">自助服务</h3>
         
		 <div class="service-grids">
         
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s1.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3><a href="jsp/QbookSearch.jsp" target="_blank">图书查询</a></h3>
					 <p>可分为按照主题词、关键字、ISBN、分类号、出版社、丛书名、索书号、作者等检索条件进行查询。</p>
                                                                    <p>Can be divided according to the keywords, keyword, ISBN, classification number, press and cnmarc, call number, the author query retrieval conditions. </p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
             
             <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s2.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3><a href="jsp/QshowBorrowBook.jsp" target="_blank">在借图书</a></h3>
					 <p>用户登录之后，可以在再借图书板块查看登录账号在图书馆的借书记录、在借书目、已借时间、欠费金额等内容</p>
                                                                    <p>User logged in, you can in the plate to check the login name to borrow books in the library borrow books record, in the borrowed books, has borrowed time, owe the amount, etc </p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
             
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s2.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3><a href="jsp/QpersonalCenter.jsp" target="_blank">个人中心</a></h3>
					 <p>用户登录之后，可以在个人中心修改个人账号的密码。查看个人信息。</p>
                                                                    <p> User logged in, the individual account can be changed in the center of the personal password. To check the personal information.</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
             
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s1.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3><a href="jsp/QchattingRoom.jsp" target="_blank">研讨室查询</a></h3>
					 <p>可以查询江西财经大学研讨室开放时间，所有研讨室是否可借，同学们可以通过查询提前获得研讨室状态，避免借不到的麻烦。</p>
                                                                    <p>Can query the jiangxi university of finance and economics seminar room open time, all of the seminar room whether can borrow, students can through seminar room status query in advance, to avoid not to borrow trouble. </p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
		 </div>
	 </div>
</div>
<!---->
<!--script-->
<script src="js/jquery.chocolat.js"></script>		
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
<div class="gallery" id="gallery">
		<div class="container">
			<h3>经典好书</h3>
			<div class="gallery-grids">
			<section>
				<ul id="da-thumbs" class="da-thumbs">
					<li>
						<a href="images/book5.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book5.jpg" alt="" >
							<div>
								<h5>道德经</h5>
								<span>
《道德经》，又称《道德真经》、《老子》、《五千言》、《老子五千文》，是中国古代先秦诸子分家前的一部著作，为其时诸子所共仰，传说是春秋时期的老子（李耳）所撰写，是道家哲学思想的重要来源....
</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book9.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book9.jpg" alt="" />
							<div>
								<h5>亲爱的安德烈</h5>
								<span>
安德烈十四岁的时候，龙应台离开欧洲，返回台湾，就任台北市首任文化局长。等她卸任回到儿子身边，安德烈已是一个一百八十四公分高的十八岁的小伙子，坐在桌子另一边，有一点“冷”地看着妈妈。
他们是两代人，年龄相差三十年；他们也是两国人，中间横着东西文化。失去小男孩安安没关系....</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book3.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book3.jpg" alt="" />
							<div>
								<h5>Oracle 11g数据库管理与开发基础教程 </h5>
								<span>
Oracle DataBase是目前最为流行的RDBMS产品之一，拥有众多的高端用户。
本书较为全面地介绍Oracle DataBase 11g的基本管理操作和应用开发方法。
全书共分18章，介绍Oracle数据库服务器环境的建立与日常管理操作、常见对象管理、游标和动态SQL技术....</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book4.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book4.jpg" alt="" />
							<div>
								<h5>答案之书(The Book of Answers)</h5>
								<span>
它不能解决你的每一桩人生大事<br>
它只负责熨平那些细枝末节的烦恼<br>
不用再左右为难，让《解答之书》替你下决定<br>
明天要带新男朋友去妈妈家吗？绝对不要<br>
新同桌知道我喜欢他很久了吗，我该主动点吗？你现在必须行动<br>
这个问题的答案我都不满意！？数到10，再问一遍<br>
</span>
							</div>
						</a>
					</li>
					<li>	
						<a href="images/book1.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book1.jpg" alt="" />
							<div>
								<h5>编程之美</h5>
								<span>
游戏之乐：从游戏和其他有趣问题出发，化繁为简，分析总结<br>
数字之魅：编程的过程实际上就是和数字及字符打交道的过程<br>
结构之法：汇集了常见的对字符串、链表、队列，以及树等进行操作的题目<br>
数学之趣：列举了一些不需要写具体程序的数学问题，锻炼读者的抽象思维能力...</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book6.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book6.jpg" alt="" />
							<div>
								<h5>浪潮之巅</h5>
								<span>
近一百多年来，总有一些公司很幸运地、有意识或无意识地站在技术革命的浪尖之上。
在这十几年间，它们代表着科技的浪潮，直到下一波浪潮的来临。
从一百年前算起，AT&T 公司、IBM 公司、苹果公司、英特尔公司、微软公司、思科公司、雅虎公司和Google公司都先后被幸运地推到了浪尖...
</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book7.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book7.jpg" alt="" />
							<div>
								<h5>风雪追击</h5>
								<span>
一个作家不可能写出那么多杰作,<br>
但东野圭吾很难让你失望。<br>
风雪交加的滑雪场,飞驰人群中的一次邂逅。<br>
命运的交叉点,两层老式公寓。<br>
散落的围棋，被盗走的钱，一位死去的老人。<br>
一枚清晰的指纹。<br>
野泽滑雪场，一场猎杀与逃亡。<br>
</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book8.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book8.jpg" alt="" />
							<div>
								<h5>黑客与画家</h5>
								<span>
本书是硅谷创业之父Paul Graham 的文集，主要介绍黑客即优秀程序员的爱好和动机，讨论黑客成长、黑客对世界的贡献以及编程语言和黑客工作方法等所有对计算机时代感兴趣的人的一些话题。<br>
书中的内容不但有助于了解计算机编程的本质、互联网行业的规则，还会帮助读者了解我们这个时代，迫使读者独立思考。</span>
							</div>
						</a>
					</li>
					<li>
						<a href="images/book2.jpg" class="b-link-stripe b-animate-go  thickbox">
							<img src="images/book2.jpg" alt="" />
							<div>
								<h5>Unix环境高级编程</h5>
								<span>
本书是被誉为UNIX编程“圣经”的Advanced Programming in the UNIX Environment一书的更新版。<br>
书中除了介绍UNIX文件和目录、标准I/O库、系统数据文件和信息、进程环境、进程控制、进程关系、信号、线程、线程控制、守护进程、各种I/O、进程间通信、网络IPC、伪终端等方面的内容.....</span>
							</div>
						</a>
					</li>					
				</ul>
				<div class="clearfix"> </div>
			</section>
			<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
		<script type="text/javascript">
			$(function() {
			
				$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

			});
		</script>
        </div>
	</div>
</div>
<!--//gallery-->
<div id="skills" class="skills">
	 <div class="container">
		 <h3>图书分类</h3>
		 <div class="contains">
	<!--面包屑导航-->
	
	<!--商品分类-->
    <div class="wareSort clearfix">
		<ul id="sort1"></ul>
		<ul id="sort2" style="display: none;"></ul>
		<ul id="sort3" style="display: none;"></ul>
	</div>
	<div class="selectedSort"><b>您当前选择的图书类别是：</b><i id="selectedSort"></i></div>
	<div class="wareSortBtn">
		<input id="releaseBtn" type="button" value="查看图书" disabled="disabled" />
	</div>
	<script src="js/jquery.sort.js"></script>
</div>
	  </div>
</div>
<!---->
  <script src="js/responsiveslides.min.js"></script>
  <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks",
      });
    });
  </script>
<!---->
<div id="testi" class="pricing">
	 <div class="container">
		 <div class="pricing-text">			
			<h3>名人堂</h3>				
		 </div>
		 <!-- start slider -->	
		 <div class="pricing-grids">
			 <div class="slider">
				 <ul class="rslides" id="slider2">
					 <li>						 
					     <div class="col-md-6 pricing-plans">
							  <p>Fusce ultrices, arcu nec semper facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae enim sit amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m1.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>
						 <div class="col-md-6 pricing-plans">
							  <p>Suspendisse potenti. Nulla facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae enim sit amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m2.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>						
					      <div class="clearfix"></div>						  
					  </li>	
					  <li>						    
						 <div class="col-md-6 pricing-plans">
							  <p>Suspendisse potenti. Nulla facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m2.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>	
						  <div class="col-md-6 pricing-plans">
							  <p>Fusce ultrices, arcu nec semper facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m1.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>
					      <div class="clearfix"></div>						  
					  </li>
					  <li>						 
					     <div class="col-md-6 pricing-plans">
							  <p>Duis eget urna ultricies facilisi In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae enim sit amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m1.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>
						 <div class="col-md-6 pricing-plans">
							  <p>Suspendisse potenti. Nulla facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae enim amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m3.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>						
					      <div class="clearfix"></div>						  
					  </li>	
				  </ul>
			   </div>
			   <!-- end slider -->
		  </div>  	
	 </div>
</div>
<!---->
<div id="contact" class="contact">
	 <div class="container">
		 <h3>友情链接</h3>
		  <div class="map">
			 <iframe src="http://www.wanfangdata.com.cn/" style="border:0"></iframe>
		 </div>		 
		  
	 </div>
</div>
<!---->
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