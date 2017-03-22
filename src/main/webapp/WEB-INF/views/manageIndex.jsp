<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>

<title>管理员主页</title>

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
		padding-left: 150px;
		padding-top: 20px;
	}
	.content label{
		font-size: 20px;
	}
	.content img{
		height: 350px;
	    position: absolute;
	    right: 100px;
	    top: 100px;
	    width: 350px;
	}
	.content .picture{
		position: absolute;
		right: 250px;
		top:65px;
	}
	.content table{
		margin-top: 80px;
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
			<h2>管理员个人信息</h2>
			<table>
				<tr>
					<td><label>用户名：</label></td>
					<td><label>张三</label></td>
				</tr>
				<tr>
					<td><label>真实姓名：</label></td>
					<td><label>张三</label></td>
				</tr>
				<tr>
					<td><label>邮箱:</label></td>
					<td><label>yuyu@163.com</label></td>
				</tr>
				<tr>
					<td><label>联系电话：</label></td>
					<td><label>18881234567</label></td>
				</tr>
				<tr>
					<td><label>QQ号码：</label></td>
					<td><label>123456789</label></td>
				</tr>
				<tr>
					<td><label>昵称：</label></td>
					<td><label>小小鱼</label></td>
				</tr>
				<tr>
					<td><label>管理员等级：</label></td>
					<td><label>5</label></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>						
				<label class="picture">个人头像</label>
				<img src="<%=request.getContextPath() %>/resources/images/profile.png">
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

