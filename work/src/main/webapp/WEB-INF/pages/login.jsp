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
  <link rel="stylesheet" href="<%=basePath %>/resources/plugins/font-awesome/font-awesome.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/plugins/ionicons/ionicons.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/AdminLTE/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<%=basePath %>/resources/plugins/iCheck/square/blue.css">

  <script src="<%=basePath %>/resources/plugins/html5shiv/html5shiv.min.js"></script>
  <script src="<%=basePath %>/resources/plugins/respond/respond.min.js"></script>

</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a>
  </div>
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="../../index2.html" method="post">
      <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">登　录</button>
        </div>
      </div>
    </form>

  </div>
</div>

<script src="<%=basePath %>/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=basePath %>/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>/resources/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
