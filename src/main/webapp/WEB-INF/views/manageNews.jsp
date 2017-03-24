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
		cursor: pointer;
    	color:  #185598;
	}
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
				<select id = "news_type" class="type" onchange="news_type()">
					<option>所有类型</option>
					<option>金融新闻</option>
					<option>健康新闻</option>
					<option>便民新闻</option>
					<option>社区新闻</option>
					<option>娱乐新闻</option>
					<option>体育新闻</option>
				</select>
				<table style="margin-top: 10px;">
					<thead>
						<td>标题</td>
						<td>作者</td>
						<td>发布日期</td>
						<td>新闻类型</td>
						<td>
							<tt class="edit_td"></tt>
							<tt class="edit_td"></tt>
							<tt class="edit_td"></tt>
						</td>
						
					</thead>
					<tr class="edit_tr">
						<td class="edit_td2">${page.target[0].title}</td>
						<td class="edit_td2">${page.target[0].author}</td>
						<td class="edit_td2">${page.target[0].date}</td>
						<td class="edit_td2">${page.target[0].type}</td>
						<td>
							<tt class="edit_td check_tt">查看</tt>
							<tt class="edit_td modify_tt">修改</tt>
							<tt class="edit_td delete_tt">删除</tt>
						</td>
					</tr>					
					<tr class="edit_tr">
						<td class="edit_td2">${page.target[1].title}</td>
						<td class="edit_td2">${page.target[1].author}</td>
						<td class="edit_td2">${page.target[1].date}</td>
						<td class="edit_td2">${page.target[1].type}</td>
						<td>
							<tt class="edit_td check_tt">查看</tt>
							<tt class="edit_td modify_tt">修改</tt>
							<tt class="edit_td delete_tt">删除</tt>
						</td>
					</tr>
					<tr class="edit_tr">
						<td class="edit_td2">${page.target[2].title}</td>
						<td class="edit_td2">${page.target[2].author}</td>
						<td class="edit_td2">${page.target[2].date}</td>
						<td class="edit_td2">${page.target[2].type}</td>
						<td>
							<tt class="edit_td check_tt">查看</tt>
							<tt class="edit_td modify_tt">修改</tt>
							<tt class="edit_td delete_tt">删除</tt>
						</td>
					</tr>
					<tr class="edit_tr">
						<td class="edit_td2">${page.target[3].title}</td>
						<td class="edit_td2">${page.target[3].author}</td>
						<td class="edit_td2">${page.target[3].date}</td>
						<td class="edit_td2">${page.target[3].type}</td>
						<td>
							<tt class="edit_td check_tt">查看</tt>
							<tt class="edit_td modify_tt">修改</tt>
							<tt class="edit_td delete_tt">删除</tt>
						</td>
					</tr>
					<tr class="edit_tr">
						<td class="edit_td2">${page.target[4].title}</td>
						<td class="edit_td2">${page.target[4].author}</td>
						<td class="edit_td2">${page.target[4].date}</td>
						<td class="edit_td2">${page.target[4].type}</td>
						<td>
							<tt class="edit_td check_tt">查看</tt>
							<tt class="edit_td modify_tt">修改</tt>
							<tt class="edit_td delete_tt">删除</tt>
						</td>
					</tr>
				</table>

				<div class = "page">
					<span id="page_up">上一页</span>
					<span id="current_page">1</span>
					<span id="page_next">下一页</span>
					
					<select id="page_select" onchange="page_select()">
						<option  id="page_sum" value= ${page.sum} >共${page.sum}页</option>
					</select>
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
	
	
	<!-- 自定义js -->
	<!-- 查看删除修改js -->
	<script type="text/javascript">
		$(".check_tt").click(function(){
			var title = $(this).parent().siblings().slice(0, 1).text();
			$.post('/fspc/news/checkDetail', {title: title}, function(data) {
				alert(data.summarization);
			},"json");
		});	
		$(".modify_tt").click(function(){
			var title = $(this).parent().siblings().slice(0, 1).text();
		});
		$(".delete_tt").click(function(){
			var title = $(this).parent().siblings().slice(0, 1).text();
			
			if(confirm("是否进行删除？")){
				$.post('/fspc/news/delete', {title: title}, function(data) {
					console.log(data);
					window.location.href = "/fspc/manage/manageNews";
				});
			}
		});

	</script>

	<!-- 分页js -->
	<script type="text/javascript">
		$.ajaxSetup({
		    async : false
		}); 

		//page函数，根据当前页面讯息获取后台数据
		function page(current){
			var type = $("#news_type option:selected").text();
			var author = "yuyu";
			var data;
			$.post('/fspc/manage/page', {current: current,type:type,author:author},
			 function(data2) {
			 	data = data2;
			},"json");
			return data;
		}

		//根据获得的数据翻页填充数据；
		function flip(data){
			$(".edit_td2,edit_td").text("");
			$("#current_page").text(data.current);
			$("#page_select").val(data.current);
			for(var i = 0;i<data.target.length;i++){
				$(".edit_tr").slice(i, i+1).children(".edit_td2").slice(0, 1).text(data.target[i].title);
				$(".edit_tr").slice(i, i+1).children(".edit_td2").slice(1, 2).text(data.target[i].author);
				$(".edit_tr").slice(i, i+1).children(".edit_td2").slice(2, 3).text(data.target[i].date);
				$(".edit_tr").slice(i, i+1).children(".edit_td2").slice(3, 4).text(data.target[i].type);
			}
		}

		//select选择框跳转页面
		function page_select(){
			var str = $("#page_select option:selected").text();
			var current = $("#page_select option:selected").val();
			var data = page(current);
			flip(data);
		}

		//根据page_sum（总页数）改变page_select下拉 
		function page_select_change(page_sum){
			$("#page_select").empty();
			var option1 = "<option id = 'page_sum' value = '"+page_sum+"'>共"+page_sum+"页</option>";
			$("#page_select").append(option1);
			for(var i = 1;i <= page_sum;i++){
				var str = '<option value = "'+i+'">第'+i+'页</option>';
				$("#page_select").append(str);
			}
		}

		//点击下一页跳转页面
		$("#page_next").click(function(){
			var current = parseInt($("#current_page").text());
			var page_sum = parseInt($("#page_sum").val());
			if(current == page_sum){
				alert("已是最后一页！");
				return;
			}
			var data = page(current+1);
			flip(data);
		});
		
		//点击上一页跳转页面
		$("#page_up").click(function(){
			var current = parseInt($("#current_page").text());
			if(current == 1){
				alert("已是第一页！");
				return;
			}
			var data = page(current-1);
			flip(data);
		});


		//加载页面时动态加载select下拉框
		page_select_change($("#page_sum").val());

		//根据新闻类型改变分页状态
		function news_type(){
			var data = page(1);
			page_select_change(data.sum);
			$("#page_sum").val(data.sum);
			$("#page_sum").text("共"+data.sum+"页");
			flip(data);
		}

	</script>


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

