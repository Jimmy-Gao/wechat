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
	<div class="span6">
		<p>.</p>
		<ul class="unstyled margin-top-10 margin-bottom-10">
			<li><i class="icon-ok"></i> Nam liber tempor cum soluta</li>
			<li><i class="icon-ok"></i> Mirum est notare quam</li>
			<li><i class="icon-ok"></i> Lorem ipsum dolor sit amet</li>
			<li><i class="icon-ok"></i> Mirum est notare quam</li>
		</ul>
		<!-- Blockquotes -->
		<blockquote class="hero">
			<p>Lorem ipsum dolor sit amet, consectetuer sed diam nonummy nibh
				euismod tincidunt.</p>
			<small>Bob Nilson</small>
		</blockquote>
	</div>
	<div class="span6">
		<iframe src="#"
			style="width: 100%; height: 327px; border: 0" ></iframe>

	</div>
	<div class="headline">
		<h3>我们的团队</h3>
	</div>
	<ul class="thumbnails">
		<li class="span3">
			<div class="meet-our-team">

				<h3>
					李晴<small>QQ:1037962767</small>
				</h3>

				<img src="./media/team_info/lq.jpg" alt=""
					style="width: 180px; height: 230px;" />

				<div class="team-info">

					<p>北京大学，软件开发方向</p>
					<p>北京大学，软件开发方向</p>
					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
							class="bds_qzone" data-cmd="qzone"></a><a href="#"
							class="bds_tsina" data-cmd="tsina"></a><a href="#"
							class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren"
							data-cmd="renren"></a><a href="#" class="bds_weixin"
							data-cmd="weixin"></a>
					</div>
				</div>

			</div>

		</li>

		<li class="span3">

			<div class="meet-our-team">

				<h3>
					路婧威 <small>QQ:1156407389</small>
				</h3>

				<img src="./media/team_info/ljw.jpg" alt=""
					style="width: 180px; height: 230px;" />

				<div class="team-info">

					<p>Donec id elit non mi porta gravida at eget metus. Fusce
						dapibus, justo sit amet risus etiam porta sem...</p>
					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
							class="bds_qzone" data-cmd="qzone"></a><a href="#"
							class="bds_tsina" data-cmd="tsina"></a><a href="#"
							class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren"
							data-cmd="renren"></a><a href="#" class="bds_weixin"
							data-cmd="weixin"></a>
					</div>
				</div>

			</div>

		</li>

		<li class="span3">

			<div class="meet-our-team">

				<h3>
					许松 <small>QQ:464446732</small>
				</h3>

				<img src="./media/image/2.jpg" alt=""
					style="width: 180px; height: 230px;" />

				<div class="team-info">

					<p>Donec id elit non mi porta gravida at eget metus. Fusce
						dapibus, justo sit amet risus etiam porta sem...</p>
					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
							class="bds_qzone" data-cmd="qzone"></a><a href="#"
							class="bds_tsina" data-cmd="tsina"></a><a href="#"
							class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren"
							data-cmd="renren"></a><a href="#" class="bds_weixin"
							data-cmd="weixin"></a>
					</div>

				</div>

			</div>

		</li>

		<li class="span3">

			<div class="meet-our-team">

				<h3>
					肖勍星 <small>QQ:277597940</small>
				</h3>

				<img src="./media/image/3.jpg" alt=""
					style="width: 180px; height: 230px;" />

				<div class="team-info">

					<p>Donec id elit non mi porta gravida at eget metus. Fusce
						dapibus, justo sit amet risus etiam porta sem...</p>


					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
							class="bds_qzone" data-cmd="qzone"></a><a href="#"
							class="bds_tsina" data-cmd="tsina"></a><a href="#"
							class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren"
							data-cmd="renren"></a><a href="#" class="bds_weixin"
							data-cmd="weixin"></a>
					</div>


				</div>

			</div>

		</li>
	</ul>
</div>
</div>
<div class="footer"><%=Config.COPY_RIGHT%></div>
</body>

</html>
