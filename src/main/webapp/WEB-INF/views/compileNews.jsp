<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>

<title>发布新闻</title>

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

	<!-- 文本编辑器引用 -->
	<script type="text/javascript" charset="gbk" src="<%=request.getContextPath()%>/resources/gbk-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="gbk" src="<%=request.getContextPath()%>/resources/gbk-jsp/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="gbk" src="<%=request.getContextPath()%>/resources/gbk-jsp/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>


	<style type="text/css">
		.content{
			width: 1000px;
			height:450px;
			opacity: 0.85;
			background: #fff;
			position: relative;
			left: 200px;
			padding-left: 150px;
			padding-top: 20px;
			z-index: 999998;
			top:100px;
		}
		
		.content input{
			width:400px;
			color: #185598;
		}

		#news_type,#news_type option{
			color: #185598;
			border-color: #185598;
		}
		
		#summarization{
			overflow-y:auto; 
			border:1px solid #A5A3A3;
			width:600px;
			height:100px;
			color: #333;
		}

		#url1,#url2,#url3{
			border:1px solid #A5A3A3;
			width:417px;
			height:27px;
			overflow-x:auto;
			display: inline-block;
			position: relative;
			top: 7px;
			left:7px;
		}

		#submit{
			width:100px;
		}

		.cover{
			width: 150px;
			height: 150px;
		}

		#contentedit{
			width:100px;
		}

		hr{
			position: relative;
			right: 75px;
			border-top:2px dotted #185598
		}
		
		.editor-div{
			text-align:center;
		}
		
		.editor-div2{
			margin:20px 88px;
		}
		
		.submit{
			width:125px;
		}

		.content span{
			color: #185598;
			border-color: #185598;
		}
		
	</style>
	
		<style type="text/css">
		.tabs .header {
			padding-left: 0;
			margin-bottom:20px;
			background: #F6F6F6;
			border: 1px solid #E5E5E5;
			position:relative;
			right:75px;
		}
		.tabs .header li {
			float: left;
			list-style: none;
			min-width: 125px;
			height: 50px;
			line-height: 50px;
			border-right: 1px solid #E5E5E5;
			text-align: center;
		}
		.tabs .header li.cur {
			background: #fff;
			border-top:2px solid #185598;
			margin-top: -1px;
			margin-bottom: -1px;
			height: 51px;
			line-height: 50px;
		}
		.tabs .header li.cur a {
			color: #185598;
		}
		.tabs .header li a {
			color: #3C3C3C;
			text-decoration: none;
		}
		.tabs>.panel {
			display: none;
		} 
		.tabs>.show {
			display: block;
		}
		.clearfix { 
	      *zoom: 1;
	    } 
	    .clearfix:before, 

	    .clearfix:after { 
	      display: table; 
	      line-height: 0; 
	      content: "";
	    } 
	    .clearfix:after { 
	      clear: both; 
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

				<div class="content">
				
					<div class="tabs">
						<ul class="header clearfix">
							<li class="cur"><a href="#tab-1">基础信息</a></li>
							<li><a href="#tab-2">新闻内容</a></li>
							<li><a href="#tab-3">封面图片</a></li>
						</ul>
						<div id="tab-1" class="panel show">		
						    <span>新闻类型</span>
							<select id = "news_type">
								<option>请选择新闻类型：</option>
								<option>金融新闻</option>
								<option>健康新闻</option>
								<option>便民新闻</option>
								<option>社区新闻</option>
								<option>娱乐新闻</option>
								<option>体育新闻</option>
							</select><br><br>
							<span>新闻标题</span>
							<input id="title" name="title" type = "text" /><br><br>
							<span>新闻作者</span>
							<input id="author" name="author" type = "text"/><br><br>
							<span>新闻日期</span>
							<input id="date" type="date" name="date"/><br><hr>
						</div>
						<div id="tab-2" class="panel">
							<span>简介</span>
							<div id = "summarization" contenteditable="true" style="color: #185598;"></div><hr>
							<p font-size="20px" display = "inline-block" style="color: #185598;">新闻内容</p>
							<br>
							<input type="button" id="contentedit" name="contentedit" value="编写新闻内容"> 
							<br><hr>			
						</div>
						<div id="tab-3" class="panel">			
							<span>封面图片</span><br>
							<span>URL1</span><div id = "url1" contenteditable="true"></div><br>
							<span>URL2</span><div id = "url2" contenteditable="true"></div><br>
							<span>URL3</span><div id = "url3" contenteditable="true"></div><br><br>
							<img class="cover" src="">
							<img class="cover" src="">
							<img class="cover" src="">
							<hr>
						</div>
					</div>
					<br>
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

					<div id = "editor-div" class = "editor-div">
    					<div class = "editor-div2">
    						<h1>编写新闻</h1>
    						<script id="editor" type="text/plain" style="width:100%;height:300px;"></script>
    					</div>
    					<br>
    					<div>
        					<button class="submit">提交</button>
        				</div>
        				<br>	
					</div>

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

	<script type="text/javascript">
		$(".submit").click(function(){
			var title = $("#title").val().trim();
			var type = $("#news_type option:selected").text();
			var author = $("#author").val().trim();
			var date = $("#date").val();
			var url1 = $("#url1").text();
			var url2 = $("#url2").text();
			var url3 = $("#url3").text();
			var summarization = $("#summarization").text().trim();
			var content = String(getContent());

			/* console.log(title);
			console.log(type);
			console.log(author);
			console.log(date);
			console.log(url1);
			console.log(summarization);
			console.log(content);
			alert(title.length); */

			if(title==""){
				alert("请填写标题！");
			}
			else if(type=="请选择新闻类型："){
				alert("请选择新闻类型！");
			}
			else if(author==""){
				alert("请填写作者！");
			}
			else if(date == ""){
				alert("请选择日期或日期格式不对！");
			}
			else if(summarization==""){
				alert("请填写新闻简介 ！");
			}
			else if(content==""){
				alert("请填写新闻内容！");
			}
			else{
				$.ajax({
						url: '/fspc/news/addNews',
						type: 'post',
						dataType: 'text',
						data: {title: title,type:type,author:author,date:date,summarization:summarization,content:content,url1:url1,ulr2:url2,url3:url3},					
						success:function(data){  
                   		alert(data);
                   		window.location.href="/fspc/manage/index";  
                   		console.log("发送成功");
               			}/* ,error:function(data){
               			alert(data);  
                   		console.log("获取错误");  
               			}  */
					});		
			}

		});
	</script>

	<script type="text/javascript">
		$(function(){

			$(".tabs>.header>li").click(function( e ){
				
				var li = $( this );
				if( li.hasClass("cur") )
					return;
				//切换li
				li.siblings(".cur").removeClass('cur').end().addClass('cur');
				//
				var id = li.children("a").attr("href");

				li.parents(".tabs").children(".show").removeClass("show");
				$( id ).addClass("show");
			});

		});		

	</script>

	<script type = "text/javascript">
	     var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push(UE.getEditor('editor').getContent());
        return arr;
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
	</script>

	<script type="text/javascript">
		jQuery(document).ready(function($) {  
			$("#contentedit").click(function(event) {
				document.getElementById("editor-div").scrollIntoView();
			});
			$("#url1").blur(function(event) {
				var str = $(this).text();
				$(".cover").slice(0, 1).attr("src",str);
			});
			$("#url2").blur(function(event) {
				var str = $(this).text();
				$(".cover").slice(1, 2).attr("src",str);
			});
			$("#url3").blur(function(event) {
				var str = $(this).text();
				$(".cover").slice(2, 3).attr("src",str);
			});
		});


	</script>
</body>
</html>

