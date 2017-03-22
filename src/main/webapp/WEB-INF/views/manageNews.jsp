<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>

<title>管理新闻</title>

<!-- For-Mobile-Apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Sportive a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

<!-- Custom-Stylesheet-Links -->
	<!-- Bootstrap-Core-CSS --> <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" type="text/css" media="all" />
	<!-- Index-Page-CSS --> <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/manage.css" type="text/css" media="all" />
	<!-- Owl-Carousel-Styling --> <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.css" type="text/css" media="all" />
<!-- //Custom-Stylesheet-Links -->

<!-- Web-Fonts -->
	<link href='//fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<!-- //Web-Fonts -->

	<style type="text/css">
	.content{
		width: 1000px;
		height: 500px;
		opacity: 0.85;
		background: #fff;
		position: relative;
		left: 200px;
		padding-left: 75px;
		padding-top: 20px;
	}

	.type{
		display: inline-block;
	}

	.content table td{
		width: 175px;
		text-align: center;
    	border-bottom: 1px solid;
    	height: 50px;
	}

	.edit_td{
		width: 80px;
	}
	
	.content table tt{
		text-align: center;
    	height: 50px;
	}
	
	.page{
		position: relative;
    	top: 50px;
    	left: 300px;
    	width: 400px;
	}
	
	.page span{
		padding-left: 15px;
	    width: 50px;
	    font-size: 20px;
	    cursor: pointer;
	}
	</style>

</head>
<body>

	<!-- Header -->
	<div class="header">

		<!-- Navbar -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">

				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/fspc/manage/index">Hello!张三</a>
				</div>

				<div id="navbar" class="navbar-collapse navbar-right collapse hover-effect">
					<ul class="nav navbar-nav">
						<li><a href="/fspc/manage/index">主页</a></li>
						<li><a href="/fspc/manage/compileNews">发布新闻</a></li>
						<li><a href="/fspc/manage/manageNews">管理信息</a></li>
						<li><a href="serve-manage.html">管理服务</a></li>
						<li><a href="web-manage.html">管理网站信息</a></li>
					</ul>
				</div>	
			</div>
			<br>
			<div class="content">
				<p class="type">新闻类型</p>
				<select class="type">
					<option>金融新闻</option>
					<option>健康新闻</option>
					<option>便民新闻</option>
					<option>社区新闻</option>
					<option>娱乐新闻</option>
					<option>体育新闻</option>
				</select>
				<table>
					<thead>
						<td>标题</td>
						<td>作者</td>
						<td>发布日期</td>
						<td>新闻类型</td>
						<td>
							<tt class="edit_td">查看</tt>
							<tt class="edit_td">修改</tt>
							<tt class="edit_td">删除</tt>
						</td>
						
					</thead>
					<tr>
						<td>千万记得为孩子办理居民医疗保险</td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<tt class="edit_td">查看</tt>
							<tt class="edit_td">修改</tt>
							<tt class="edit_td">删除</tt>
						</td>
					</tr>					
					<tr>
						<td>中国航空发动机集团成立 习近平作指示李克强作批示</td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<tt class="edit_td">查看</tt>
							<tt class="edit_td">修改</tt>
							<tt class="edit_td">删除</tt>
						</td>
					</tr>
					<tr>
						<td>中国航空发动机集团成立 习近平作指示李克强作批示</td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<tt class="edit_td">查看</tt>
							<tt class="edit_td">修改</tt>
							<tt class="edit_td">删除</tt>
						</td>
					</tr>
					<tr>
						<td>中国航空发动机集团成立 习近平作指示李克强作批示</td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<tt class="edit_td">查看</tt>
							<tt class="edit_td">修改</tt>
							<tt class="edit_td">删除</tt>
						</td>
					</tr>
					<tr>
						<td>中国航空发动机集团成立 习近平作指示李克强作批示</td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<tt class="edit_td">查看</tt>
							<tt class="edit_td">修改</tt>
							<tt class="edit_td">删除</tt>
						</td>
					</tr>
				</table>

				<div class = "page">
					<span>上一页</span>
					<span>1</span>
					<span>2</span>
					<span>3</span>
					<span>4</span>
					<span>5</span>
					<span>下一页</span>
				</div>
			</div>			
		</nav>
		<!-- //Navbar -->	

		<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-1.jpg" alt="Sportive">
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-2.jpg" alt="Sportive">
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-3.jpg" alt="Sportive">
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-4.jpg" alt="Sportive">
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-5.jpg" alt="Sportive">
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-6.jpg" alt="Sportive">
				</li>
				<li>
					<img src="<%=request.getContextPath()%>/resources/images/slide-7.jpg" alt="Sportive">
				</li>
			</ul>
		</div>
		<!-- //Slider -->

	</div>
	<!-- //Header -->

	

	<!-- Supportive-JavaScript --> <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
	<!-- Necessary-JS-File-For-Bootstrap --> <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	
	<!-- Banner-Slider-JavaScript -->
	<script src="<%=request.getContextPath()%>/resources/js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				nav: true,
				speed: 800,
				namespace: "callbacks",
				pager: true,
			});
		});
	</script>
	<!-- //Banner-Slider-JavaScript -->

	<!-- Owl-Carousel-JavaScript -->
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel ({
				items : 5,
				lazyLoad : true,
				autoPlay : true,
				pagination : false,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->

	<!-- Skills-Number-Scroller-Effect-JavaScript -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/numscroller-1.0.js"></script>
	<!-- //Skills-Number-Scroller-Effect-JavaScript -->

	<!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
	<script type="text/javascript">
		$(document).ready(function() {
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 100,
				easingType: 'linear'
			};
			$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 0;"> </span></a>
	<!-- //Slide-To-Top JavaScript -->

	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/move-top.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll, .navbar li a, .footer li a").click(function(event){
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->

<!-- //Custom-JavaScript-File-Links -->


</body>
</html>

