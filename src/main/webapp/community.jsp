<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>

<title>社区新闻</title>
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/currency.css" rel="stylesheet" type="text/css">
<script src="resources/js/jquery.js" type="text/javascript"></script>
<style type="text/css">
	#right img {
		display:inline-block;
	}
</style>
</head>

<body>
	<!--top part start -->
	<div id = "blank_div">
		<div id="toppart">
			<a href="index.jsp"><img src="resources/images/logo.png" width="316" height="66" border="0" class="logo" title="News portal" /></a>
			<ul>
				<li><a href="content.jsp">音乐</a></li>
				<li>|</li>
				<li><a href="content.jsp">留言板</a></li>
				<li>|</li>
				<li><a href="content.jsp">联系我们</a></li>
				<li>|</li>
				<li><a href="content.jsp">管理员登录</a></li>
			</ul>
		</div>
	</div>
	<!--top part end -->
	<!--main part start -->
		<div id="main">
			<!--link part start -->
				<div id="link">
					<ul class="main_link">
						<li><a href="currency.jsp"><span class="left"><span>金融新闻</span></span></a></li>
						<li><a href="health.jsp"><span class="left"><span>健康新闻</span></span></a></li>
						<li><a href="convenient.jsp"><span class="left"><span>便民新闻</span></span></a></li>
						<li  class="current"><a href="community.jsp"><span class="left"><span>社区新闻</span></span></a></li>
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

			<!--body part start -->
				<div id="body">
					<div class="wrapper">
						<h2>今日热点</h2><br>
						<div id="focus">
							<ul>
								<li><a href="http://www.lanrentuku.com/" target="_blank"><img src="resources/images/photo.jpg" alt="QQ商城焦点图效果下载" /></a></li>
								<li><a href="http://www.lanrentuku.com/" target="_blank"><img src="resources/images/photo.jpg" alt="QQ商城焦点图效果教程" /></a></li>
								<li><a href="http://www.lanrentuku.com/" target="_blank"><img src="resources/images/photo.jpg" alt="jquery商城焦点图效果" /></a></li>
								<li><a href="http://www.lanrentuku.com/" target="_blank"><img src="resources/images/photo.jpg" alt="jquery商城焦点图代码" /></a></li>
								<li><a href="http://www.lanrentuku.com/" target="_blank"><img src="resources/images/photo.jpg" alt="jquery商城焦点图源码" /></a></li>
							</ul>
						</div>
					</div>
					<!-- wrapper end -->

					<!--left big part start -->
						<div id="left_big">
							<!--left part start -->
								<div id="left">
									<h2 class="today">今日头条</h2>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										<label>新闻内容简要</label> 
									</p>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										<label>新闻内容简要</label>  
									</p>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										<label>新闻内容简要</label>  
									</p>

									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										<label>新闻内容简要</label>  
									</p>
									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										<label>新闻内容简要</label>  
									</p>
									<p class="text padding_bot">
										<strong>新闻标题</strong> <br>
										<label>新闻内容简要</label>  
									</p>
								</div>
							<!--left part end -->
							<span class="left_big_bot">&nbsp;</span>
						</div>
					<!--left big part end -->
					<!--right part start -->
						<div id="right">
							<div id="right_next">
							<h2 class="our_service">惠家E站，给你最好的服务！</h2>
							<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<a href="#" class="moreLinkRight">阅读更多...</a>


							<h2 class="our_service">惠家E站，给你最好的服务！</h2>
							<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<a href="#" class="moreLinkRight">阅读更多...</a>
							<h2 class="our_service">惠家E站，给你最好的服务！</h2>
							<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<a href="#" class="moreLinkRight">阅读更多...</a>
							<h2 class="our_service">惠家E站，给你最好的服务！</h2>
							<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<a href="#" class="moreLinkRight">阅读更多...</a>
							<h2 class="our_service">惠家E站，给你最好的服务！</h2>
							<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<a href="#" class="moreLinkRight">阅读更多...</a>
							<h2 class="our_service">惠家E站，给你最好的服务！</h2>
							<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<img src="resources/images/photo.jpg" width = "150" height = "150"/>
							<a href="#" class="moreLinkRight">阅读更多...</a>
							</div>
							<br/>
							<label class="loadMore">加载更多</label>
                        </div>
						<!--right part end -->
					<div class="spacer"></div>
				</div> 
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

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$.post('/fspc/news/load', {num:6}, function(data) {
			for(var i = 1;i <= data.length ;i++){
				$("#left>p>strong").slice(i-1,i).text(data[i-1].title);
				$("#left label").slice(i-1,i).text(data[i-1].summarization);
			}
		},"json");
		
		$("body").on("click","#left>p",function(){
			var str = $(this).children("strong").text();
			var url = "detail.jsp?title="+str;
			window.location.href = url;
		});
		
		$("body").on("click",".loadMore",function(){
			for(var i = 1;i<=6;i++){
				$("#right_next").append('<h2 class="our_service">惠家E站，给你最好的服务！</h2>');
				$("#right_next").append('<p class="text padding_bot">泰笛洗涤是一款基于手机APP，为用户提供在线洗衣、洗包、洗鞋、洗护奢侈品及居家用品洗护服务等一站式洗涤服务。通过自建服务型物流，为用户提供更“爽”的洗涤体验：24小时免费上门收送。  </p>');
				$("#right_next").append('<img src="resources/images/photo.jpg" width = "150" height = "150"/>');
				$("#right_next").append('<img src="resources/images/photo.jpg" width = "150" height = "150"/>');
				$("#right_next").append('<img src="resources/images/photo.jpg" width = "150" height = "150"/>');
				$("#right_next").append('<a href="#" class="moreLinkRight">阅读更多...</a>');
			}
		});
	});
</script>

<script type="text/javascript">

	$(function() {
	var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
	var len = $("#focus ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;

	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
	btn += "<span></span>";
	}
	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#focus").append(btn);
	$("#focus .btnBg").css("opacity",0.5);

	//为小按钮添加鼠标滑入事件，以显示相应的内容
	$("#focus .btn span").css("opacity",0.4).mouseenter(function() {
	index = $("#focus .btn span").index(this);
	showPics(index);
	}).eq(0).trigger("mouseenter");

	//上一页、下一页按钮透明度处理
	$("#focus .preNext").css("opacity",0.2).hover(function() {
	$(this).stop(true,false).animate({"opacity":"0.5"},300);
	},function() {
	$(this).stop(true,false).animate({"opacity":"0.2"},300);
	});

	//上一页按钮
	$("#focus .pre").click(function() {
	index -= 1;
	if(index == -1) {index = len - 1;}
	showPics(index);
	});

	//下一页按钮
	$("#focus .next").click(function() {
	index += 1;
	if(index == len) {index = 0;}
	showPics(index);
	});

	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$("#focus ul").css("width",sWidth * (len));

	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$("#focus").hover(function() {
	clearInterval(picTimer);
	},function() {
	picTimer = setInterval(function() {
	showPics(index);
	index++;
	if(index == len) {index = 0;}
	},4000); //此4000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");

	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
	var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
	$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position
	//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
	$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
	}
	}); 
</script>

</html>

