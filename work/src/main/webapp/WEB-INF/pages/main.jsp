<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>毕业设计管理系统</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="<%=basePath %>/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/plugins/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/plugins/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/AdminLTE/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/AdminLTE/css/skins/skin-blue.min.css">

  <script src="<%=basePath %>/resources/plugins/html5shiv/html5shiv.min.js"></script>
  <script src="<%=basePath %>/resources/plugins/respond/respond.min.js"></script>
  
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <a href="index2.html" class="logo">
      <span class="logo-mini"><b>毕业</b></span>
      <span class="logo-lg"><b>毕业管理系统</b></span>
    </a>
    <nav class="navbar navbar-static-top" role="navigation">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">毕业管理系统</span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">              
              <span class="hidden-xs">登录人</span>
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  
  
  <aside class="main-sidebar">

    <section class="sidebar">

      <ul class="sidebar-menu">
        <li class="header">HEADER</li>
        <li class="active"><a href="#"><i class="fa fa-circle-o"></i> <span>Link</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o"></i> <span>Another Link</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-circle-o"></i> <span>系统管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="system/showUserInfManager" target="menuFrame"><i class="fa fa-circle-o"></i>用户管理</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i>参数管理</a></li>
          </ul>
        </li>
      </ul>
    </section>
  </aside>

  <div class="content-wrapper">
    
    <section class="content show_iframe">

		<iframe id="menuFrame" name="menuFrame"  style="overflow:visible;" scrolling="yes" frameborder="no" height="100%" width="100%"></iframe>

    </section>
  </div>

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  
</div>


<script src="<%=basePath %>/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=basePath %>/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>/resources/AdminLTE/js/app.min.js"></script>
<script type="text/javascript">

$(window, ".wrapper").resize(function () {
	initIframeHeight();
});

$(document).ready(function(){
	initIframeHeight();
});

function initIframeHeight(){
	var neg = $('.main-header').outerHeight() + $('.main-footer').outerHeight();
    var window_height = $(window).height();
    var sidebar_height = $(".sidebar").height();
    if ($("body").hasClass("fixed")) {
      $("#menuFrame").css('min-height', window_height - $('.main-footer').outerHeight());
    } else {
      var postSetWidth;
      if (window_height >= sidebar_height) {
        $("#menuFrame").css('min-height', window_height - neg - 35);
        postSetWidth = window_height - neg - 35;
      } else {
        $("#menuFrame").css('min-height', sidebar_height);
        postSetWidth = sidebar_height;
      }

      var controlSidebar = $($.AdminLTE.options.controlSidebarOptions.selector);
      if (typeof controlSidebar !== "undefined") {
        if (controlSidebar.height() > postSetWidth)
          $("#menuFrame").css('min-height', controlSidebar.height());
      }

    }
}
</script>
</body>
</html>

