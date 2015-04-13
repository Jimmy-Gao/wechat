<%@page import="org.linuxkernel.wechat.config.Config"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title><%=Config.PROJECT_NAME%></title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="./media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/style-metro.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/style.css" rel="stylesheet" type="text/css" />
<link href="./media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />
<link href="./media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->

<link href="./media/css/jquery.gritter.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/daterangepicker.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/fullcalendar.css" rel="stylesheet"
	type="text/css" />
<link href="./media/css/jqvmap.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="./media/css/jquery.easy-pie-chart.css" rel="stylesheet"
	type="text/css" media="screen" />
<!-- END PAGE LEVEL STYLES -->
<link rel="shortcut icon" href="./media/image/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="index.html"> <img
					src="./media/image/logo.png" alt="logo" />

				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed"
					data-toggle="collapse" data-target=".nav-collapse"> <img
					src="./media/image/menu-toggler.png" alt="" />
				</a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<ul class="nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->
					<li class="dropdown" id="header_notification_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-warning-sign"></i> <span class="badge">6</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<li>
								<p>You have 14 new notifications</p>
							</li>

							<li><a href="#"> <span class="label label-success"><i
										class="icon-plus"></i></span> New user registered. <span class="time">Just
										now</span>

							</a></li>

							<li class="external"><a href="#">See all notifications <i
									class="m-icon-swapright"></i></a></li>

						</ul></li>

					<!-- END NOTIFICATION DROPDOWN -->

					<!-- BEGIN INBOX DROPDOWN -->

					<li class="dropdown" id="header_inbox_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-envelope"></i> <span class="badge">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<li>
								<p>You have 12 new messages</p>

							</li>

							<li><a href="inbox.html?a=view"> <span class="photo"><img
										src="./media/image/avatar2.jpg" alt="" /></span> <span
									class="subject"> <span class="from">Lisa Wong</span> <span
										class="time">Just Now</span>

								</span> <span class="message"> Vivamus sed auctor nibh congue
										nibh. auctor nibh auctor nibh... </span>

							</a></li>

							<li class="external"><a href="inbox.html">See all
									messages <i class="m-icon-swapright"></i>
							</a></li>

						</ul></li>

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

					<li class="dropdown" id="header_task_bar"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-tasks"></i> <span class="badge">5</span>

					</a>

						<ul class="dropdown-menu extended tasks">

							<li>

								<p>You have 12 pending tasks</p>

							</li>

							<li><a href="#"> <span class="task"> <span
										class="desc">New release v1.2</span> <span class="percent">30%</span>

								</span> <span class="progress progress-success "> <span
										style="width: 30%;" class="bar"></span>

								</span>
							</a></li>
							<li class="external"><a href="#">See all tasks <i
									class="m-icon-swapright"></i></a></li>

						</ul></li>

					<!-- END TODO DROPDOWN -->

					<!-- BEGIN USER LOGIN DROPDOWN -->

					<li class="dropdown user"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img alt=""
							src="./media/image/avatar1_small.jpg" /> <span class="username">${user}</span>
							<i class="icon-angle-down"></i>

					</a>

						<ul class="dropdown-menu">

							<li><a href="/"><i class="icon-user"></i> 个人信息</a></li>

							<li><a href="page_calendar.html"><i
									class="icon-calendar"></i> 待办事项</a></li>

							<li><a href="/"><i class="icon-envelope"></i> 我的邮箱(3)</a></li>

							<li><a href="/"><i class="icon-tasks"></i> 未来任务</a></li>

							<li class="divider"></li>

							<li><a href="extra_lock.html"><i class="icon-lock"></i>
									锁屏</a></li>

							<li><a href="/logout"><i class="icon-key"></i> 注销</a></li>

						</ul></li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container">

		<!-- BEGIN SIDEBAR -->

		<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->

			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li>
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a> <input type="text"
								placeholder="" /> <input type="button" class="submit" />
						</div>

					</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->
				</li>

				<li class="start active "><a href="/"> <i class="icon-home"></i>
						<span class="title">菜单面板</span> <span class="selected"></span>

				</a></li>

				<li class=""><a href="javascript:;"> <i class="icon-cogs"></i>

						<span class="title">工单管理</span> <span class="arrow "></span>
				</a>
					<ul class="sub-menu">
						<li><a href="/basic"><i class="icon-font"></i> 工单录入</a></li>
						<li><a href="/research"><i class="icon-font"></i> 工单查询</a></li>
						<li><a href="/check"><i class="icon-comments"></i> 工单审核</a></li>
						<li><a href="/statistics"><i class="icon-font"></i> 汇总检索</a></li>

					</ul></li>

			</ul>

			<!-- END SIDEBAR MENU -->

		</div>

		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="/">主页</a> <i
								class="icon-angle-right"></i></li>
							<li><a href="/">菜单面板</a></li>
							<li class="pull-right no-text-shadow">
								<div id="dashboard-report-range"
									class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive"
									data-tablet="" data-desktop="tooltips" data-placement="top"
									data-original-title="Change date range">
									<i class="icon-calendar"></i> <span></span> <i
										class="icon-angle-down"></i>
								</div>

							</li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<div id="dashboard">

					<!-- BEGIN DASHBOARD STATS -->


					<!-- END PORTLET-->
				</div>
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="./media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="./media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="./media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="./media/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="./media/js/excanvas.min.js"></script>
	<script src="./media/js/respond.min.js"></script>  
	<![endif]-->
	<script src="./media/js/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="./media/js/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="./media/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="./media/js/jquery.uniform.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="./media/js/jquery.vmap.js" type="text/javascript"></script>
	<script src="./media/js/jquery.vmap.russia.js" type="text/javascript"></script>
	<script src="./media/js/jquery.vmap.world.js" type="text/javascript"></script>
	<script src="./media/js/jquery.vmap.europe.js" type="text/javascript"></script>
	<script src="./media/js/jquery.vmap.germany.js" type="text/javascript"></script>
	<script src="./media/js/jquery.vmap.usa.js" type="text/javascript"></script>
	<script src="./media/js/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<script src="./media/js/jquery.flot.js" type="text/javascript"></script>
	<script src="./media/js/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="./media/js/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="./media/js/date.js" type="text/javascript"></script>
	<script src="./media/js/daterangepicker.js" type="text/javascript"></script>
	<script src="./media/js/jquery.gritter.js" type="text/javascript"></script>
	<script src="./media/js/fullcalendar.min.js" type="text/javascript"></script>
	<script src="./media/js/jquery.easy-pie-chart.js"
		type="text/javascript"></script>
	<script src="./media/js/jquery.sparkline.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="./media/js/app.js" type="text/javascript"></script>
	<script src="./media/js/index.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init(); // initlayout and core plugins

		});
	</script>
</html>