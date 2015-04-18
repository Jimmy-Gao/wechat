<%@page import="org.linuxkernel.wechat.config.Config"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config.APPLICATION%></title>
<link rel="shortcut icon" href="/media/images/favicon.ico" />
<link href="/media/css/bootstrap.css" rel="stylesheet">
<link href="/media/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/media/css/font-awesome.min.css" rel="stylesheet" />
<link href="/media/css/style.css" rel="stylesheet" type="text/css" />
<link href="/media/css/about-us.css" rel="stylesheet" type="text/css" />

<script src="/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="/media/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<script src="/media/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/media/js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/media/js/app.js"></script>
<script src="/media/js/libs/init-config.js"></script>
<script src="/media/js/contact-us.js"></script>
<script>
	$(function() {
		App.init();
		ContactUs.init();
	});
</script>
</head>
<body class="page-header-fixed">
	<div id="template_header">
		<div class="navbar header navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/"><%=Config.PROJECT_NAME%></a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><b class="icon-tasks"></b>逗比首页</a>
								<ul class="dropdown-menu">
									<li><a href="/web/game" target="_blank"><b
											class="icon-user"></b>逗比游戏</a></li>
									<li><a href="index"><b class="icon-calendar"></b> 我的日历</a></li>
									<li><a href="index"><b class="icon-envelope"></b>
											新消息(3)</a></li>
									<li><a href="#"><b class="icon-tasks"></b>我的任务</a></li>
									<li class="divider"></li>
									<li><a href="index"><b class="icon-lock"></b> 锁屏</a></li>
									<li><a href="index"><b class="icon-remove-circle"></b>
											注销登录</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="/web/game"><b
									class="icon-tasks"></b>益智游戏</a>
								<ul class="dropdown-menu">
									<li><a href="/web/2048" target="_blank"><b
											class="icon-user"></b>挑战2048</a></li>
									<li><a href="index"><b class="icon-calendar"></b> 我的日历</a></li>
									<li><a href="index"><b class="icon-envelope"></b>
											新消息(3)</a></li>
									<li><a href="#"><b class="icon-tasks"></b>我的任务</a></li>
									<li class="divider"></li>
									<li><a href="index"><b class="icon-lock"></b> 锁屏</a></li>
									<li><a href="index"><b class="icon-remove-circle"></b>
											注销登录</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="/web/game"><b
									class="icon-tasks"></b>逗比笑话</a>
								<ul class="dropdown-menu">
									<li><a href="/web/2048" target="_blank"><b
											class="icon-user"></b>挑战2048</a></li>
									<li><a href="index"><b class="icon-calendar"></b> 我的日历</a></li>
									<li><a href="index"><b class="icon-envelope"></b>
											新消息(3)</a></li>
									<li><a href="#"><b class="icon-tasks"></b>我的任务</a></li>
									<li class="divider"></li>
									<li><a href="index"><b class="icon-lock"></b> 锁屏</a></li>
									<li><a href="index"><b class="icon-remove-circle"></b>
											注销登录</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="/web/game"><b
									class="icon-tasks"></b>益智游戏</a>
								<ul class="dropdown-menu">
									<li><a href="/web/2048" target="_blank"><b
											class="icon-user"></b>挑战2048</a></li>
									<li><a href="index"><b class="icon-calendar"></b> 我的日历</a></li>
									<li><a href="index"><b class="icon-envelope"></b>
											新消息(3)</a></li>
									<li><a href="#"><b class="icon-tasks"></b>我的任务</a></li>
									<li class="divider"></li>
									<li><a href="index"><b class="icon-lock"></b> 锁屏</a></li>
									<li><a href="index"><b class="icon-remove-circle"></b>
											注销登录</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="/web/game"><b
									class="icon-tasks"></b>益智游戏</a>
								<ul class="dropdown-menu">
									<li><a href="/web/2048" target="_blank"><b
											class="icon-user"></b>挑战2048</a></li>
									<li><a href="index"><b class="icon-calendar"></b> 我的日历</a></li>
									<li><a href="index"><b class="icon-envelope"></b>
											新消息(3)</a></li>
									<li><a href="#"><b class="icon-tasks"></b>我的任务</a></li>
									<li class="divider"></li>
									<li><a href="index"><b class="icon-lock"></b> 锁屏</a></li>
									<li><a href="index"><b class="icon-remove-circle"></b>
											注销登录</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="/web/game"><b
									class="icon-tasks"></b>益智游戏</a>
								<ul class="dropdown-menu">
									<li><a href="/web/2048" target="_blank"><b
											class="icon-user"></b>挑战2048</a></li>
									<li><a href="index"><b class="icon-calendar"></b> 我的日历</a></li>
									<li><a href="index"><b class="icon-envelope"></b>
											新消息(3)</a></li>
									<li><a href="#"><b class="icon-tasks"></b>我的任务</a></li>
									<li class="divider"></li>
									<li><a href="index"><b class="icon-lock"></b> 锁屏</a></li>
									<li><a href="index"><b class="icon-remove-circle"></b>
											注销登录</a></li>
								</ul></li>
						</ul>
						<ul class="nav pull-right">
							<li class="divider-vertical"></li>
							<li><a href="/web/about_me"><b class="icon-bell"></b>关于作者</a></li>
							<li><a href="/web/contact_me"><b class="icon-pencil"></b>联系作者</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<div id="template_content" class="page-container row-fluid">

<div class="padding-center">
	<div class="span12">
		<div class="row-fluid">
			<div class="span6">
				<h3 class="form-section">联系方式</h3>
				<p>Lorem ipsum dolor sit amet, Ut wisi enim ad minim veniam,
					quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
					aliquip ex ea commodo consequat consectetuer adipiscing elit, sed
					diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam
					erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
					tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
					consequat.</p>

				<div class="well">
					<h4>地址</h4>
					<address>
						<strong>北京大学</strong><br> 北京市海淀区颐和园路5号<br> 邮编：100871<br>
						<abbr title="Phone">TEL:</abbr> 18611451923
					</address>
					<address>
						<strong>Email</strong><br> <a
							href="mailto:gorljimmy@pku.edu.cn">gorljimmy@pku.edu.cn</a>
					</address>
					<ul class="social-icons margin-bottom-10">
						<li><a href="#" data-original-title="facebook"
							class="facebook"></a></li>
						<li><a href="https://github.com/GorlJimmy"
							data-original-title="github" class="github"></a></li>
						<li><a href="#" data-original-title="Goole Plus"
							class="googleplus"></a></li>
						<li><a href="#" data-original-title="linkedin"
							class="linkedin"></a></li>
						<li><a href="#" data-original-title="rss" class="rss"></a></li>
						<li><a href="#" data-original-title="skype" class="skype"></a></li>
						<li><a href="#" data-original-title="twitter" class="twitter"></a></li>

						<li><a href="#" data-original-title="youtube" class="youtube"></a></li>

					</ul>

				</div>

			</div>

			<div class="span6">

				<form action="#" class="horizontal-form">

					<h3 class="form-section">您的反馈</h3>

					<div class="control-group">

						<label class="control-label">姓名</label>

						<div class="controls">

							<input type="text" class="m-wrap span12" />

						</div>

					</div>

					<div class="control-group">

						<label class="control-label">Email</label>

						<div class="controls">

							<input type="text" class="m-wrap span12">

						</div>

					</div>

					<div class="control-group">

						<label class="control-label">留言</label>

						<div class="controls">

							<textarea class="m-wrap span12" rows="3"></textarea>

						</div>

					</div>

					<button type="submit" class="btn blue">
						<i class="icon-ok"></i> 发送
					</button>
					<button type="button" class="btn">取消</button>
				</form>
				<!-- END FORM-->
			</div>
		</div>
	</div>
</div>
</div>
	<div class="footer"><%=Config.COPY_RIGHT%></div>
</body>
</html>