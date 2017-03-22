<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
<title>管理员登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Unique Login Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files  -->
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!-- /font files  -->
<!-- css files -->
<link href="resources/css/animate-custom.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/login.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
<style type="text/css">
    .username_exist,.password_error,.notcheck{
        position: relative;
        border: 1px solid #fff;
        border-radius: 5px;
        width: 120px;
        height: 38px;
        bottom: 130px;
        left: 312px;
        text-align: center;
        line-height: 38px;
        background: #fff;
        display: inline-block;
        z-index: 999;
        cursor: pointer;
        font-size: 14px;
    }

    .username_signup_exist,.password_signup_comfirm{
        position: relative;
        border: 1px solid #fff;
        border-radius: 5px;
        width: 120px;
        height: 38px;
        top:-100px;
        text-align: center;
        line-height: 38px;
        background: #fff;
        display: inline-block;
        z-index: 999;
        cursor: pointer;
        font-size: 14px;
    }
</style>

</head>
<body>
<div style="margin-top:10px;">
    <a href="index.jsp" class="back">返回主页</a>
</div>
<div class="content">	
	<section>				
        <div id="container_demo" >
            <a class="hiddenanchor" id="toregister"></a>
            <a class="hiddenanchor" id="tologin"></a>
            <div id="wrapper">
				<div id="login" class="animate form">
					<!-- <div class="content-img">
                        <img src="images/profile.png" alt="img" class="w3l-img">
                    </div> -->
                     <form  action="/fspc/login/manageIndex" method="post" onsubmit="return check()">  
                        <h2>管理员登录</h2> 
                        <p> 
							<label for="username" class="uname" data-icon="u" >请输入用户名或邮箱 </label>
                            <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                        </p>
						<p> 
                            <label for="password" class="youpasswd" data-icon="p">请输入密码</label>
							<input id="password" name="password" required="required" type="password" placeholder="eg:password123!@#$%" /> 
                        </p>
                        <p class="keeplogin"> 
							<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
							<label for="loginkeeping">保存登录</label>
						</p>
                        <p class="login button"> 
                            <input type="submit" value="登录" /> 
						</p>
                        <p class="change_link">
							想成为管理员？
							<a href="#toregister" class="to_register">加入我们</a>
						</p>
                    </form>
                    <div class="username_exist">账号不存在...</div>
                    <div class="password_error">密码错误...</div>
                    <div class="notcheck">暂未通过注册...</div> 
                </div>
				<div id="register" class="animate form">
					<!-- <div class="content-img">
						<img src="images/profile.png" alt="img" class="w3l-img">
					</div> -->
                    <form  action="/fspc/login/signup" method="post" onsubmit="return signup()"> 
                        <h2>注册管理员</h2> 
                        <p> 
                            <label for="usernamesignup" class="uname" data-icon="u">请输入用户名</label>
                            <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
						</p>
                        <p> 
                            <label for="emailsignup" class="youmail" data-icon="e" >请输入邮箱</label>
                            <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                        </p>
                        <p> 
							<label for="passwordsignup" class="youpasswd" data-icon="p">请输入密码</label>
                            <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg:password123!@#$%"/>
                        </p>
                        <p> 
							<label for="passwordsignup_confirm" class="youpasswd" data-icon="p">确认密码</label>
                            <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg:password123!@#$%"/>
                        </p>
                        <p class="signin button"> 
							<input type="submit" value="注册"/> 
						</p>
                        <p class="change_link">  
							已经是管理员？
							<a href="#tologin" class="to_register">返回登录</a>
						</p>
                    </form>
                    <div class="username_signup_exist">账号已存在...</div>
                    <div class="password_signup_comfirm">密码不相同...</div>
                </div>
			</div>
        </div>  
    </section>

    <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js" type="text/javascript"></script>

    <!-- 登录使用的js -->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".username_exist").hide();
            $(".password_error").hide();
            $(".notcheck").hide();
            $(".username_signup_exist").hide();
            $(".password_signup_comfirm").hide();
            $(".username_exist").mouseover(function(event) {
                $(".username_exist").hide();
            });
            $(".password_error").mouseover(function(event) {
                $(this).hide();
            });
            $(".notcheck").mouseover(function(event) {
                $(this).hide();
            });
            $(".username_signup_exist").mouseover(function(event) {
                $(this).hide();
            });
            $(".password_signup_comfirm").mouseover(function(event) {
                $(this).hide();
            });

        });
        $.ajaxSetup({
            async : false
        });  
        function check(){
            var username = $("#username").val();
            var password = $("#password").val();
            var flag = 0;
            $.post('/fspc/login/checklogin', {username:username,password:password},
             function(data) {

                msg = data;
               if(data=="NOTEXIST"){
                    $(".username_exist").show();   
                    flag = 0;
                }
                if(data=="ERROR"){
                    $(".password_error").show();
                    flag = 0;
                }
                if(data == "NOTCHECK"){
                    $(".notcheck").show();
                    flag = 0;
                }
                if(data=="OK"){                                                                    
                    flag = 1;
                }
            });

            if(flag == 0){
                return false;
            }
            else
                return true;
        }
    </script>

    <!-- 注册使用的js -->
    <script type="text/javascript">
        function signup(){
            var usernamesignup = $("#usernamesignup").val();
            var passwordsignup = $("#passwordsignup").val();
            var emailsignup = $("#emailsignup").val();
            var passwordsignup_confirm = $("#passwordsignup_confirm").val();

            var flag = 0;

            $.post('/fspc/login/checkUsernameExist', {username: usernamesignup}, 
                function(data) {
                    if(data == "EXIST"){
                        $(".username_signup_exist").show();
                        flag = 0;
                    }
                    if(data == "NOTEXIST"){
                        flag = 1;
                    }
            });

            if(passwordsignup_confirm != passwordsignup){
                flag = 0 ;
                $(".password_signup_comfirm").show();
            }

            if(flag == 0){
                return false;
            }
            else{
                return true;
            }
        }

    </script>

</div>
</body>
</html>

