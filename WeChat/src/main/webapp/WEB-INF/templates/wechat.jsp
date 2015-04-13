<%@page import="org.linuxkernel.wechat.config.Config"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config.PROJECT_NAME%></title>
<link href="./media/css/bootstrap.css" rel="stylesheet">
<link href="./media/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/style-metro.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/style.css" rel="stylesheet" type="text/css" />
<link href="./media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />
	
<link href="./media/css/jquery.gritter.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/login.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="./media/image/favicon.ico" />


<script src="./media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="./media/js/jquery-migrate-1.2.1.min.js"
	type="text/javascript"></script>
<script src="./media/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<script src="./media/js/bootstrap.min.js" type="text/javascript"></script>
<script src="./media/js/excanvas.min.js"></script>
<script src="./media/js/respond.min.js"></script>
<script src="./media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="./media/js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="./media/js/jquery.cookie.min.js" type="text/javascript"></script>
<script src="./media/js/jquery.uniform.min.js" type="text/javascript"></script>
<script type="text/javascript" src="./media/js/jquery.gritter.js"></script>
<script type="text/javascript" src="./media/js/jquery.pulsate.min.js"></script>
<script type="text/javascript" src="./media/js/jquery.bootpag.min.js"></script>
<script src="./media/js/app.js"></script>
<script src="./media/js/libs/login_.js"></script>
<script>
	$(function() {
		App.init();
	});
</script>

</head>
<body class="page-header-fixed">
	<div id="template_header">
		<div class="navbar header navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/"><%=Config.APPLICATION%></a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li><a href="/"><b class="icon-home"></b>首页</a></li>

							<li><a href="/checkedList"><b class="icon-book"></b>已审核工单</a></li>
							<!--  
							<li><a href="index"><b class="icon-comment"></b>课程简介</a></li>
							<li><a href="index"><b class="icon-envelope"></b>项目信息</a></li>
							<li><a href="index"><b class="icon-bell"></b>课程通知</a></li>
							<li><a href="index"><b class="icon-download"></b>资源下载</a></li>-->
						</ul>
						<ul class="nav pull-right">
							<li class="divider-vertical"></li>

							<li><a href="system?requestType=about"><b
									class="icon-bell"></b>关于我们</a></li>
							<li><a href="system?requestType=contact"><b
									class="icon-pencil"></b>联系我们</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="template_content" class="page-container row-fluid">
		<div class="login">
			<div class="logo">
				<h4>专业化生产保障维修派工系统</h4>
			</div>
			<div class="content">
				<form class="form-vertical login-form" action="/wechat"
					method="post">
					<h3 class="form-title">账号登录</h3>
					<div class="control-group">
						<div class="controls">
							<div class="left">
								<i class="icon-user"></i> <select name="username"
									class="input-icon m-wrap placeholder-no-fix" id="username">
								</select>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<div class="left">
								<i class="icon-lock"></i> <input
									class="input-icon m-wrap placeholder-no-fix" type="password"
									placeholder="输入密码" name="password" />
							</div>
						</div>
					</div>
					<div class="form-actions">
						<button type="submit" class="btn green pull-right">
							登录 <i class="m-icon-swapright m-icon-white"></i>
						</button>
					</div>
					<div class="forget-password">
						<h4>忘记密码 ?</h4>
						<p>不要着急, 请联系管理员 以协助您重置密码或找回密码</p>
					</div>

				</form>
			</div>
			<div class="copyright">2015 &copy;大庆油田第三油矿, Inc. All rights
				reserved.</div>
		</div>
	</div>
	<div class="footer"><%=Config.COPY_RIGHT%></div>
</body>
</html>
