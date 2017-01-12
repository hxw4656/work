<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>毕业设计管理系统</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/AdminLTE/css/AdminLTE.min.css">

  <script src="${pageContext.request.contextPath}/resources/plugins/html5shiv/html5shiv.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/plugins/respond/respond.min.js"></script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<form id="search" action="${pageContext.request.contextPath}/system/showUserInfManager" method="post">
	<input type="hidden" id="start" name="start" value="">
</form>
	<button id="addUserInf" type="button" class="btn btn-primary">新增</button>
	<div class="box-body">
		<table class="table table-bordered" width="100%">
			<thead>
				<tr>
					<th>用户名</th>
					<th>用户编号</th>
					<th>用户姓名</th>
					<th>创建时间</th>
					<th>修改时间</th>
					<th>状态</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${page.result }" var="userInf">
					<tr>
						<td>${userInf.userCode }</td>
						<td>${userInf.userNo }</td>
						<td>${userInf.userName }</td>
						<td><fmt:formatDate value="${userInf.createDate }" pattern="yyyy-MM-dd HH:mm"/></td>
						<td><fmt:formatDate value="${userInf.updateDate }" pattern="yyyy-MM-dd HH:mm"/></td>
						<td>${userInf.status }</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<div class="box-footer clearfix">
		<ul class="pagination pagination-sm no-margin pull-right">
			<li><a href="javascript:void(0)" onclick="goFirst()">首页</a></li>
			<li><a href="javascript:void(0)" onclick="goPriv()">上一页</a></li>
			<li><a href="javascript:void(0)" onclick="goNext()">下一页</a></li>
			<li><a href="javascript:void(0)" onclick="goLast()">尾页</a></li>
		</ul>
	</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">新增用户</h4>
            </div>
            <div class="modal-body">
				<form id="userInfForm" class="form-horizontal" action="${pageContext.request.contextPath}/system/saveUserInf" method="post">
	              <input type="hidden" id="userId" name="userId">
	              <div class="box-body">
	                <div class="form-group">
	                  <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	
	                  <div class="col-sm-6">
	                    <input type="text" class="form-control" id="userName" name="userName" placeholder="姓名">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label for="inputPassword3" class="col-sm-2 control-label">编号</label>
	
	                  <div class="col-sm-6">
	                    <input type="text" class="form-control" id="userNo" name="userNo" placeholder="编号">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <label for="inputPassword3" class="col-sm-2 control-label">账号</label>
	
	                  <div class="col-sm-6">
	                    <input type="text" class="form-control" id="userCode" name="userCode" placeholder="账号">
	                  </div>
	                </div>	                              
	              </div>	              
	            </form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="saveUserInfSubmit" class="btn btn-primary">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


	<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var pageSize = ${page.pageSize};
	var pageIndex = ${page.pageIndex};
	var totalCount = ${page.totalCount};
	var countPage = totalCount/pageSize;
	var goFirst = function(){
		if(pageIndex == 1)
			return;
		$("#start").val("0");
		$("#search").submit();
	}
	var goNext = function(){		
		if(countPage == pageIndex)
			return;
		
		$("#start").val(pageIndex*pageSize);
		$("#search").submit();
	}
	var goPriv = function(){
		if(pageIndex == 1)
			return;
		
		$("#start").val((pageIndex-2)*pageSize);
		$("#search").submit();
	}
	
	var goLast = function(){
		if(countPage == pageIndex)
			return;
		$("#start").val((countPage-1)*pageSize);
		$("#search").submit();
	}
	
	$("#saveUserInfSubmit").on('click',function(){
		$("#userInfForm").submit();
	});
	
	$("#addUserInf").on('click',function(){
		$("#myModal").modal("show");
	});
	
	var selectById = function(){
		$.ajax({
			url : "",	
			dataType : "json",
			type : "post",
			success : function(){
				
			},
			error : function(){
				
			}
			
		});
	}
	
	
</script>
</body>
</html>
