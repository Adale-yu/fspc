<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<title>区域医疗信息化建设</title>
	<!--                       CSS                       -->
	<!-- Reset Stylesheet -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css" type="text/css" media="screen" />
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" type="text/css" media="screen" />
	<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/invalid.css" type="text/css" media="screen" />
	<!--                       Javascripts                       -->
	<!-- jQuery -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/scripts/jquery.js"></script>
	<!-- jQuery Configuration -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/scripts/simpla.jquery.configuration.js"></script>
	<!-- Facebox jQuery Plugin -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/scripts/facebox.js"></script>
	<!-- jQuery WYSIWYG Plugin -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/scripts/jquery.wysiwyg.js"></script>
	<!-- jQuery Datepicker Plugin -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/scripts/jquery.datePicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/scripts/jquery.date.js"></script>
	<style type="text/css">
		.spanl{
			display:-moz-inline-box;
						  display:inline-block;
						  width:150px; 
		}
	</style>
</head>
<body>
<div id="body-wrapper">
  <!-- Wrapper for the radial gradient background -->
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <!-- Sidebar with logo and menu -->
      <h1 id="sidebar-title"><a href="#">区域医疗信息化建设</a></h1>
      <!-- Logo (221px wide) -->
      <a href="#"><img id="logo" src="<%=request.getContextPath()%>/resources/images/logo1.png" alt="HNNDYL logo" /></a>
      <!-- Sidebar Profile links -->
      <div id="profile-links"> Hello, <a href="#" title="Edit your profile">张三</a>, you have <a href="#messages" rel="modal" title="3 Messages">3 条新信息</a><br />
        <br />
        <a href="login.html" title="Login">登&nbsp;&nbsp;录</a>&nbsp; | &nbsp;<a href="#" title="Sign Out">注&nbsp;&nbsp;销</a> </div>
      <ul id="main-nav">
        <!-- Accordion Menu -->
        <li> <a href="#" class="nav-top-item">
          <!-- Add the class "no-submenu" to menu items with no sub menu -->
          系统管理 </a> 
          <ul>
          	<li><a href="#">用户管理</a></li>
        	<li><a href="department_manage.html">科室管理</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item">
          <!-- Add the class "current" to current menu item -->
          电子病历 </a>
          <ul>
            <li><a href="#">病历编辑</a></li>
            <li><a href="#">批注与修改</a></li>
            <!-- Add class "current" to sub menu items also -->
            <li><a href="#">修改病历内容</a></li>
            <li><a href="#">封存与解封</a></li>
            <li><a href="#">院内会诊管理</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 双向转诊 </a>
          <ul>
            <li><a href="#">转出管理</a></li>
            <li><a href="#">转入管理</a></li>
            <li><a href="#">查询统计</a></li>
            <li><a href="#">医疗机构管理</a></li>
            <li><a href="#">转诊记录管理</a></li>
            <li><a href="#">转诊监控</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 公共卫生管理 </a>
          <ul>
            <li><a href="childinfo_manage.html">儿童保健信息管理</a></li>
            <li><a href="femaleinfo_manage.html">孕产妇健康管理</a></li>
            <li><a href="disease_manage.html">慢病管理</a></li>
            <li><a href="recover_manage.html">康复信息管理</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item current"> 健康服务网 </a>
          <ul>
            <li><a href="releaseinfo_manage.html">信息披露</a></li>
            <li><a href="healthyservice_manage.html">健康服务</a></li>
            <li><a href="medicalservice_manage.html">看病就医服务</a></li>
            <li><a class="current" href="#">医疗保障服务</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 医疗保险管理 </a>
          <ul>
            <li><a href="insuredinstitution_manage.html">参保卫生机构管理</a></li>
            <li><a href="insuredperson_manage.html">参保居民管理</a></li>
            <li><a href="medicare_submit.html">医保支付项目申请</a></li>
            <li><a href="medicare_check.html">医保支付项目审定</a></li>
            <li><a href="#">门诊实时结算管理</a></li>
            <li><a href="#">统计分析</a></li>
          </ul>
        </li>
      </ul>
      <!-- 消息提示 -->
      <div id="messages" style="display: none">
        <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
        <h3>3 Messages</h3>
        <p> <strong>17th May 2009</strong> by Admin<br />
          My82o9 张三, 医生 elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <p> <strong>2nd May 2009</strong> by Jane Doe<br />
          Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit 张三 quam. Vivamus pretium ornare est. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <p> <strong>25th April 2009</strong> by Admin<br />
          My82o9 张三, 医生 elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <form action="#" method="post">
          <h4>New Message</h4>
          <fieldset>
          <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
          </fieldset>
          <fieldset>
          <select name="dropdown" class="small-input">
            <option value="option1">Send to...</option>
            <option value="option2">Everyone</option>
            <option value="option3">Admin</option>
            <option value="option4">Jane Doe</option>
          </select>
          <input class="button" type="submit" value="Send" />
          </fieldset>
        </form>
      </div>
      <!-- End #messages -->
    </div>
  </div>
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- Main Content Section with everything -->
    <noscript>
    <!-- 执行以下语句如果用户浏览器不支持javascript -->
    <div class="notification error png_bg">
      <div> Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
        Download From <a href="http://www.exet.tk">exet.tk</a></div>
    </div>
    </noscript>
    <!-- Page Head -->
    <h2>医疗保障服务管理</h2>
    <p id="page-intro">你需要进行以下哪个操作?</p>
    <ul class="shortcut-buttons-set">
      <li>
	      	<a class="shortcut-button" href="#add" rel="modal">
	      		<span> 
	      		<img src="<%=request.getContextPath()%>/resources/images/icons/pencil_48.png" alt="icon" /><br />
	        		发布医疗保障信息
	      		</span>
	      	</a>
      </li>
      <li>
	      <a class="shortcut-button" href="#">
		      <span> <img src="<%=request.getContextPath()%>/resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
		        	修改医疗保障信息  
		      </span>
	      </a>
      </li>
      <li>
	      <a class="shortcut-button" href="#">
		      <span> <img src="<%=request.getContextPath()%>/resources/images/icons/image_add_48.png" alt="icon" /><br />
		        	查询医疗保障信息
		      </span>
	      </a>
	  </li>
      <li>
	      <a class="shortcut-button" href="#">
		      <span> <img src="<%=request.getContextPath()%>/resources/images/icons/clock_48.png" alt="icon" /><br />
		        	删除医疗保障信息 
		      </span>
	      </a>
      </li>
    </ul>
    <!-- End .shortcut-buttons-set -->
    <div class="clear"></div>
    <!-- End .clear -->
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>医疗保障信息列表</h3>
        
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
          <div class="notification attention png_bg"> 
          <a href="#" class="close">
          <img src="<%=request.getContextPath()%>/resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" />
          </a>
            <div> 
            操作图标  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /> 功能为<strong>编辑</strong>，
            操作图标  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /> 功能为<strong>删除</strong>，
            操作图标  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />功能为<strong>查看</strong>
            </div>
          </div>
          <div class="bulk-actions align-left">
                    <select name="dropdown">
                      <option value="1">所有类型</option>
                      <option value="2">医疗保险</option>
                      <option value="3">医疗救助</option>
                    </select>
                    <input class="text-input medium-input" type="text" name="search">
                    <a class="button search"  style="cursor: pointer;">搜索</a> 
          </div>

          <table>
            <!--列表标题 -->
            <thead>
              <tr>
                <th>
                  <input class="check-all" type="checkbox" />
                </th>
                <th>医疗保障信息编号</th>
                <th>医疗保障信息标题</th>
                <th>医疗保障信息类型</th>
                <th></th>
                <th>操作图标</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="6">
				  <!--底部分页 -->
                  <div class="pagination"> 
                    <a title="First Page" style="cursor: pointer;">&laquo; First</a>
                    <a title="Previous Page" style="cursor: pointer;">&laquo; Previous</a> 
                    <a class="number  current" title="1" style="cursor: pointer;">1</a> 
                    <a class="number" title="2" style="cursor: pointer;">2</a> 
                    <a class="number" title="3" style="cursor: pointer;">3</a> 
                    <a class="number" title="4" style="cursor: pointer;">4</a> 
                    <a title="Next Page" style="cursor: pointer;">Next &raquo;</a>
                    <a title="Last Page" style="cursor: pointer;">Last &raquo;</a> 
                  </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>
                </td>
              </tr>
            </tfoot>
            <tbody>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a>
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td>
              </tr>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a> 
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                 </td>
              </tr>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a>
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td> 
              </tr>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a> 
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td>
              </tr>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a> 
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td>
              </tr>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a> 
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td>
              </tr>
              <tr class="content-tr">
                <td> 
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a>
                  <a href="#del" rel="modal" title="删除">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="删除" /></a> 
                  <a href="#view" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td>
              </tr>
              <tr class="content-tr">
                <td>
                  <input type="checkbox" />
                </td>
                <td class="security-num">YU123</td>
                <td class="security-title"><a href="#view" rel="modal" title="title">社会医疗保险</a></td>
                <td class="security-type">医疗保险</td>
                <td></td>
                <td>
                  <!-- Icons -->
                  <a href="#edit" rel="modal" title="编辑">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/pencil.png" alt="编辑" /></a> 
                  <a href="#del"  rel="modal" title="Delete"><img src="<%=request.getContextPath()%>/resources/images/icons/cross.png" alt="Delete" /></a> 
                  <a href="#view" rel="modal" rel="modal" title="查看">
                  <img src="<%=request.getContextPath()%>/resources/images/icons/hammer_screwdriver.png" alt="查看" />
                  </a> 
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        </div>
        </div>
        <!-- End #tab1 -->
        <!--表单提交界面-->
        <!--<div class="tab-content" id="tab2">
          <form action="#" method="post">
            <fieldset>
           
            <p>
              <label>Small form input</label>
              <input class="text-input small-input" type="text" id="small-input" name="small-input" />
              <span class="input-notification success png_bg">Successful message</span>
               Classes for input-notification: success, error, information, attention 
              <br />
              <small>A small description of the field</small> </p>
            <p>
              <label>Medium form input</label>
              <input class="text-input medium-input datepicker" type="text" id="medium-input" name="medium-input" />
              <span class="input-notification error png_bg">Error message</span> </p>
            <p>
              <label>Large form input</label>
              <input class="text-input large-input" type="text" id="large-input" name="large-input" />
            </p>
            <p>
              <label>Checkboxes</label>
              <input type="checkbox" name="checkbox1" />
              This is a checkbox
              <input type="checkbox" name="checkbox2" />
              And this is another checkbox </p>
            <p>
              <label>Radio buttons</label>
              <input type="radio" name="radio1" />
              This is a radio button<br />
              <input type="radio" name="radio2" />
              This is another radio button </p>
            <p>
              <label>This is a drop down list</label>
              <select name="dropdown" class="small-input">
                <option value="option1">Option 1</option>
                <option value="option2">Option 2</option>
                <option value="option3">Option 3</option>
                <option value="option4">Option 4</option>
              </select>
            </p>
            <p>
              <label>Textarea with WYSIWYG</label>
              <textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="15"></textarea>
            </p>
            <p>
              <input class="button" type="submit" value="Submit" />
            </p>
            </fieldset>
            <div class="clear"></div>
            
          </form>
        </div> 
        -->
        <!-- End #tab2 -->
      </div>
      <!-- End .content-box-content -->

      <!-- 创建用户弹框 -->
      <div class="modal-dialog" id="add" style="display: none;width: 800px;">
      		 <h3>发布医疗保障信息</h3>
      		 <fieldset>
      		 <p>
      		 *&nbsp;<label>选择医疗保障信息类型</label></br>
      		 <select name="type" class="medium-input">
                <option>医疗保险</option>
                <option>医疗救助</option>
           </select>
			 <!-- <span class="input-notification success png_bg">用户名有效</span></p>-->			 
           <p>
      		 *&nbsp;<label>输入医疗保障信息标题</label></br>
      		 <input class="text-input medium-input" type="text" id="title" name="title" />
			 <!-- <span class="input-notification error png_bg">密码未输入</span></p> -->
			     <p>
			     *&nbsp;<label>输入医疗保障信息内容</label></br>
      		 <textarea class="text-input textarea" id="textarea" name="textfield"  
           cols="40" rows="15" ></textarea>
      		 </p>

      		 <p>
              <input class="button button-submit" type="submit" value="提交" />
              <input class="button" type="reset" value="重置" />
           </p>
			 </fieldset>
      </div>
      <!-- End div-add -->
      <!-- 查看用户弹框 -->
      <div id="view" style="display: none">
      		<h3>查看医疗保障信息</h3>
      		<fieldset>
      		 <p>
           <label>医疗保障信息编号:</label>
           <span>YU123</span></br></br>

      		 <label>医疗保障信息类型:</label>
      		 <span>医疗保险</span></br></br>
      		 
      		 <label>医疗保障信息标题:</label>
      		 <span>社会医疗保险</span><hr></br></br>
      		 
      		 <label>医疗保障信息内容:</label><br><br>
      		 <span>社会医疗保险是国家和社会根据一定的法律法规，为向保障范围内的劳动者提供患病时基本医疗需求保障而建立的社会保险制度。我国的社会医疗保险由基本医疗保险和大额医疗救助、企业补充医疗保险和个人补充医疗保险三个层次构成。</span>
      		 
      		 </p>
			 </fieldset>
      </div>
      <!-- End div-view -->
      <div id="edit" style="display: none;width: 500px">
      		<h3>修改医疗保障信息</h3>
			<fieldset>
      		 <p>
      		 <label>信息类型：</label>
           <select name="type" class="medium-input">
                <option value="option1">医疗保险</option>
                <option value="option2">医疗救助</option>
           </select>
           </br></br>
			     </p>
           <p>
			     <label>信息标题：</label>
      		 <input class="text-input medium-input" type="text" id="tiname" name="name" 
      		  /></br></br>
			     </p>
           <p>
			     <label>信息内容：</label>
      		 <textarea class="text-input textarea" id="textarea1" name="textfield"  
           cols="25" rows="15" ></textarea>
            <p> 
              <input class="button" type="submit" value="保存" />
              <input class="button" type="reset" value="重置" />
            </p>
		</fieldset>
			 <!-- End edit -->
		<div id="del" style="display:none;">
			 <span style="font-size:15px;">
			 <strong>你确定删除此信息?</strong></span>
			 </br></br>
			 <input class="button" type="submit" value="确定" />
             <input class="button" type="reset" value="取消" />
		</div>
      </div>
    </div>
    <!-- End .content-box -->
    <!-- End Notifications -->
    <div id="footer"> <small>
      <!-- Remove this notice or replace it with whatever you want -->
      &#169; Copyright 2016 Twinkle | Powered by <a href="#">admin Project 004</a> | <a href="#">Top</a>
      </small> 
      <a href="#"  target="_blank">welcome to HNNDYL</a></div>
    <!-- End #footer -->
  </div>
  <!-- End #main-content -->
</div>
</body>
<script type="text/javascript">

    var type ="";
    var title="";
    var current=1;
    var start=0;

    /*page分页函数*/
      function getData(){
        $.post('/fspc/security/page', {
          current:current,
          start:start,
          type:type,
          title:title,
        }, 
        function(data) {
          for(var i = 1;i<=8;i++){
            $('.security-num').slice(i-1, i).text("");
            $('.security-type').slice(i-1, i).text("");
            $('.security-title>a').slice(i-1, i).text("");
            $('.security-num').slice(i-1, i).siblings().slice(0, 1).hide();
            $('.security-num').slice(i-1, i).siblings().slice(4, 5).children('a').hide();
          }
          for(var i = 1;i<=8;i++){
              $('.security-num').slice(i-1, i).text(data.target[i-1].securityid);
              $('.security-type').slice(i-1, i).text(data.target[i-1].type);
              $('.security-title>a').slice(i-1, i).text(data.target[i-1].name);
              $('.security-num').slice(i-1, i).siblings().slice(0, 1).show();
              $('.security-num').slice(i-1, i).siblings().slice(4, 5).children('a').show();
            }
        },"json");
      }

     getData();
      

      /*下一页*/
      $("body").on("click","a[title='Next Page']",function(){
        start += 8;
        $.post('/fspc/security/page', {
            current: current,
            start:start,
            title:title,
            type:type,
          }, 
          function(data) {
            if(data.target.length==0){
              start -= 8;
              return;
            }
            for(var i = 1;i<=8;i++){
              $('.security-num').slice(i-1, i).text("");
              $('.security-type').slice(i-1, i).text("");
              $('.security-title>a').slice(i-1, i).text("");
              $('.security-num').slice(i-1, i).siblings().slice(0, 1).hide();
              $('.security-num').slice(i-1, i).siblings().slice(4, 5).children('a').hide();
            }
            for(var i = 1;i<=data.target.length;i++){
              $('.security-num').slice(i-1, i).text(data.target[i-1].securityid);
              $('.security-type').slice(i-1, i).text(data.target[i-1].type);
              $('.security-title>a').slice(i-1, i).text(data.target[i-1].name);
              $('.security-num').slice(i-1, i).siblings().slice(0, 1).show();
              $('.security-num').slice(i-1, i).siblings().slice(4, 5).children('a').show();
            }
            current++;
            if(current>4){
              $(".number").each(function(){
                var index = parseInt($(this).text());
                $(this).text(index+1);
              });
            }
            $('.number').each(function(){
              if($(this).hasClass('current')){
                $(this).removeClass('current');
              }
              if($(this).text()==current){
                $(this).addClass('current');
              }
            })
            return;
        },"json");

      });

      /*上一页*/
      $("body").on("click","a[title='Previous Page']",function(){
        if(current==1){
          return;
        }
        start -= 8;
        $.post('/fspc/security/page', {
            current: current,
            start:start,
            title:title,
            type:type
          }, 
          function(data) {
            for(var i = 1;i<=8;i++){
              $('.security-num').slice(i-1, i).text("");
              $('.security-type').slice(i-1, i).text("");
              $('.security-title>a').slice(i-1, i).text("");
              $('.security-num').slice(i-1, i).siblings().slice(0, 1).hide();
              $('.security-num').slice(i-1, i).siblings().slice(4, 5).children('a').hide();
            }
            for(var i = 1;i<=data.target.length;i++){
              $('.security-num').slice(i-1, i).text(data.target[i-1].securityid);
              $('.security-type').slice(i-1, i).text(data.target[i-1].type);
              $('.security-title>a').slice(i-1, i).text(data.target[i-1].name);
              $('.security-num').slice(i-1, i).siblings().slice(0, 1).show();
              $('.security-num').slice(i-1, i).siblings().slice(4, 5).children('a').show();
            }
            current--;
            if($('a[title="1"]').hasClass('current')){
              $(".number").each(function(){
                var index = parseInt($(this).text());
                $(this).text(index-1);
              });
            }
            $('.number').each(function(){
              if($(this).hasClass('current')){
                $(this).removeClass('current');
              }
              if($(this).text()==current){
                $(this).addClass('current');
              }
            })
            return;
        },"json");

      });

   
   /*结束page函数*/

  /*按名字模糊查询*/
   $("body").on("click",".search",function(){
      $('.number').each(function(){
        if($(this).hasClass('current')){
          $(this).removeClass('current');
        }
        if($(this).text()=="1"){
          $(this).addClass('current');
        }
      });
      
      type = $(".bulk-actions select option:selected").text();
      title = $("input[name='search']").val();
      type = $.trim(type);
      title = $.trim(title);
      if(type == "所有类型"){
      type = "";
      }
      current=1;
      start=0;
      getData();
      // page(1,0,type,title);
      return;
   });

  /* 按类型分页*/
   $("body").on("click",".bulk-actions select option",function(){
    $('.number').each(function(){
        if($(this).hasClass('current')){
          $(this).removeClass('current');
        }
        if($(this).text()=="1"){
          $(this).addClass('current');
        }
      });
    
    type = $(this).text();
    title = $("input[name='search']").val();
    type = $.trim(type);
    title = $.trim(title);
    if(type == "所有类型"){
      type = "";
    }
    current=1;
    start=0;

    getData();
    return;
   });

    /*弹出查看页面*/
    $("body").on("focus",".security-title>a",function(){
      var title = $.trim($(this).text());
      var id = $(this).parent().siblings().slice(1, 2).text();
      console.log(id);
      $.post('/fspc/security/checkone', {name: title}, function(data) {       
        $("#view span").slice(0, 1).text(id);
        $("#view span").slice(1, 2).text(data.type);
        $("#view span").slice(2, 3).html(data.name);
        $("#view span").slice(3, 4).html(data.content);
      },"json");
    });   

    function isNullOrEmpty(strVal) {
      if (strVal == '' || strVal == null || strVal == undefined) {
       return true;
      } else {
       return false;
      }
    }
	
	/* 编辑信息 */
    var id;
    $("body").on("focus",'a[href="#edit"]',function(){
      var title1 = $.trim($(this).parent().siblings(".security-title").text());
      $.post('/fspc/security/checkone', {name: title1}, function(data) { 
        $("#tiname").val(data.name);
        $("#textarea1").html(data.content); 
        id = data.securityid;
      },"json");


    });

      $("body").on("click","#edit input[type='submit']",function(){
        var title1 = $("#tiname").val();
        var content = $("#textarea1").val(); 
        var type1 = $("#edit select option:selected").text();
        console.log(type1);
        $.post('/fspc/security/update', {
            securityid: id,
            name:title1,
            content : content,
            type :type1
          }, function(data) {
            
            if(data=="1"){
              alert("ok!");
            }
        });
      });


  /*删除信息*/
  var securityid;
  $("body").on("focus",'a[href="#del"]',function(){
    securityid = $(this).parent().siblings(".security-num").text();
  });

  $("body").on("click",'input[value="确定"]',function(){
    $.post('/fspc/security/delete-securityinfo', {securityid: securityid}, function(data) {
      if(data=="1")
        alert("ok!");
    });
  });



	/* 添加信息 */
    $("body").on("click",".button-submit",function(){
      var title = $("#facebox #title").val();
      var type = $("#facebox select[name='type'] option:selected").val();
      var content = $("#facebox #textarea").val();
      title = $.trim(title);
      if(isNullOrEmpty(title)){
        alert("标题不能为空！");
        return;
      }
      if(isNullOrEmpty(content)){
        alert("内容不能为空！");
        return;
      }


      $.post('/fspc/security/add', {
        name: title,
        type:type,
        content:content,
      }, function(data) {
        if(data=="1")
          alert("ok");
      },"json");
    });

    $("body").on('click', 'input[type="reset"]', function(event) {
      $("#facebox #title").val("");
      $("#facebox #textarea").val("");
    });



</script>


</html>
