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


<script src="/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="/media/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<script src="/media/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/media/js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/media/js/app.js"></script>
<script src="/media/js/libs/init-config.js"></script>
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
			<div class="span3">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-user"></i>扫一下关注我
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload hidden-phone"></a> <a
								href="javascript:;" class="remove hidden-phone"></a>
						</div>
					</div>
					<div class="portlet-body">
						<img alt="QR Code" src="/media/images/QRcode.jpg">
					</div>
				</div>
				<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-book"></i>益智游戏
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload hidden-phone"></a> <a
								href="javascript:;" class="remove hidden-phone"></a>
						</div>
					</div>
					<div class="portlet-body" id="newArticle"></div>
				</div>
				<div class="portlet box purple">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-download"></i>逗乐笑话
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload hidden-phone"></a> <a
								href="javascript:;" class="remove hidden-phone"></a>
						</div>
					</div>
					<div class="portlet-body" id="newResource"></div>
				</div>

			</div>
			<div class="span6">
				<div class="portlet box grey">

					<div class="portlet-title">

						<div class="caption">
							<i class="icon-cogs"></i>课程简介
						</div>

						<div class="tools">

							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload"></a> <a href="javascript:;"
								class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="row-fluid">
							<div class="span12">
								<!--Body content-->
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab6" data-toggle="tab">tb1</a>
									<li><a href="#tab7" data-toggle="tab">tb1</a>
									<li><a href="#tab8" data-toggle="tab">tb1</a>
									<li><a href="#tab9" data-toggle="tab">tb1</a>
									<li><a href="#tab10" data-toggle="tab">tb1</a>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="tab6"></div>
									<div class="tab-pane" id="tab7"></div>
									<div class="tab-pane" id="tab8"></div>
									<div class="tab-pane" id="tab9"></div>

									<div class="tab-pane" id="tab10"></div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="span3">
				<div class="portlet box red">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-comments-alt"></i>课程通知
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload hidden-phone"></a> <a
								href="javascript:;" class="remove hidden-phone"></a>
						</div>
					</div>
					<div class="portlet-body" id="newCourse"></div>
				</div>
				<div class="portlet box yellow">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-download-alt"></i>热门下载
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload hidden-phone"></a> <a
								href="javascript:;" class="remove hidden-phone"></a>
						</div>
					</div>
					<div class="portlet-body" id="newDown"></div>
				</div>
				<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-download-alt"></i>友情链接
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> <a
								href="#portlet-config" data-toggle="modal" class="config"></a> <a
								href="javascript:;" class="reload hidden-phone"></a> <a
								href="javascript:;" class="remove hidden-phone"></a>
						</div>
					</div>
					<div class="portlet-body" id="newLink"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer"><%=Config.COPY_RIGHT%></div>
</body>
</html>
