<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>

<title>Index</title>
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	#right p a{
		text-decoration: none;
		color: #6B5F44;
		font-size: 12px;
	}
	#right p a:hover{
		color: #333;
	}
	#right p{
		display: inline-block;
		width: 240px;
	}
</style>

</head>

<body>
	<!--top part start -->
	<div id = "blank_div">
		<div id="toppart">
			<a href="index.jsp"><img src="resources/images/logo.png" alt="返回主页" width="316" height="66" border="0" class="logo" title="惠家新闻" /></a>
			<ul>
				<li><a href="content.html">音乐</a></li>
				<li>|</li>
				<li><a href="content.html">留言板</a></li>
				<li>|</li>
				<li><a href="content.html">联系我们</a></li>
				<li>|</li>
				<li><a href="login.jsp">管理员登录</a></li>
			</ul>
		</div>
	</div>
	<!--top part end -->
	<!--main part start -->
		<div id="main">
			<!--link part start -->
				<div id="link">
					<ul class="main_link">	
						<li class="current.jsp"><a href="currency.jsp"><span class="left"><span>金融新闻</span></span></a></li>
						<li><a href="health.jsp"><span class="left"><span>健康新闻</span></span></a></li>
						<li><a href="convenient.jsp"><span class="left"><span>便民新闻</span></span></a></li>
						<li><a href="community.jsp"><span class="left"><span>社区新闻</span></span></a></li>
						<li><a href="entertainment.jsp"><span class="left"><span>娱乐新闻</span></span></a></li>
						<li><a href="sports.jsp"><span class="left"><span>体育新闻</span></span></a></li>
					</ul>
					<!--form part start -->
						<form name="search" method="post" action="#" >
							<label class="search_news">搜索新闻 :</label>
							<input type="text" name="text" value="" class="textbox" />
							<input type="submit" name="submit" value="搜索" class="sub"  />
						</form>
					<!--form part end -->
					<!--sub link part start -->
						<ul class="sublink">
							 <li><a href="content.html">新闻</a></li>
							<li>|</li>
						    <li><a href="content.html">娱乐</a></li>
							<li>|</li>
							<li><a href="content.html">体育</a></li>
							<li>|</li>
							<li><a href="content.html">股票</a></li>
							<li>|</li>
							<li><a href="content.html">天气</a></li>
							<li>|</li>
							<li><a href="content.html">领域</a></li>
							<li>|</li>
							<li><a href="content.html">购物</a></li>
							<li>|</li>
							<li><a href="content.html">趣味</a></li>
							<li>|</li>
							<li><a href="content.html">联系</a></li>
							<li>|</li>
							<li><a href="content.html">信息</a></li>
							<li>|</li>
							<li><a href="content.html">市场</a></li>
							<li>|</li>
							<li><a href="content.html">组织</a></li>
						</ul>
					<!--sub link part end -->
				</div>
			<!--link part end -->
			<!--header part start -->
				<div id="header">
					<!--flash part start -->
						<div>
							<img src="resources/images/header_pci.jpg" alt="" width="775" height="219" />
						</div>
					<!--flash part end -->
					<ul>
						<li class="popular"><h2>魅力图片</h2><a href="#">点击查看更多信息</a></li>
						<li class="currency"><h2>金融咨询</h2><a href="#">点击查看更多信息</a></li>
						<li class="fun"><h2>趣味故事会</h2><a href="#">点击查看更多信息</a></li>
					</ul>
				</div>
			<!--header part end -->
			<!--body part start -->
				<div id="body">
					<!--left big part start -->
						<div id="left_big">
							<!--left part start -->
								<div id="left">
									<h2 class="today">今日头条</h2>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										新闻内容简要
										<a href="#" class="moreLink">更多...</a>
									</p>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										新闻内容简要
										<a href="#" class="moreLink">更多...</a>
									</p>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										新闻内容简要
										<a href="#" class="moreLink">更多...</a>
									</p>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										新闻内容简要
										<a href="#" class="moreLink">更多...</a>
									</p>
									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										新闻内容简要
										<a href="#" class="moreLink">更多...</a>
									</p>
								</div>
							<!--left part end -->
							<span class="left_big_bot">&nbsp;</span>
						</div>
					<!--left big part end -->
					<!--right part start -->
						<div id="right">
							<h2 class="our_service">金融新闻</h2>
							<p><a href="">名宿反对萧华批KD言论收到货付款后上课的</a></p>
							<p><a href="">名宿反对萧华批KD言论</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<hr>

							<h2 class="our_service">健康新闻</h2>
							<p><a href="">名宿反对萧华批KD言论收到货付款后上课的</a></p>
							<p><a href="">名宿反对萧华批KD言论</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<hr>

							<h2 class="our_service">便民新闻</h2>
							<p><a href="">名宿反对萧华批KD言论收到货付款后上课的</a></p>
							<p><a href="">名宿反对萧华批KD言论</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<hr>

							<h2 class="our_service">社区新闻</h2>
							<p><a href="">名宿反对萧华批KD言论收到货付款后上课的</a></p>
							<p><a href="">名宿反对萧华批KD言论</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<hr>

							<h2 class="our_service">娱乐新闻</h2>
							<p><a href="">名宿反对萧华批KD言论收到货付款后上课的</a></p>
							<p><a href="">名宿反对萧华批KD言论</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<hr>

							<h2 class="our_service">体育新闻</h2>
							<p><a href="">名宿反对萧华批KD言论收到货付款后上课的</a></p>
							<p><a href="">名宿反对萧华批KD言论</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>
							<p><a href="">美媒预测湖人新阵:5虎中3潜力新星 新援压</a></p>

                        </div>
						<!--right part end -->
					<div class="spacer"></div>
				</div>
			<!--body part end -->		
		</div>
	<!--main div end -->
	<!--footer part start -->
		<div id="footer">
			<ul>								
				<li> <a href="content.html">How to Suggest a Site</a></li>
				<li>|</li> 
				<li><a href="content.html">Company Info</a></li> 
				<li>|</li> 
				<li><a href="content.html">Terms of Service</a></li>
				<li>|</li> 
				<li><a href="content.html">Jobs</a></li>
				<li>|</li> 
				<li><a href="content.html">Advertise With Us</a></li>
				<li>|</li> 
				<li><a href="content.html">Help</a></li>
			</ul>
			<p>Copyrighted &copy; by companyname.com, All Rights Reserved</p>
		</div>
	<!--footer part end -->
	
</body>
</html>

