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
<link rel="stylesheet" type="text/css"
	href="./media/css/datetimepicker.css" />
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

				<li class=" "><a href="/"> <i class="icon-home"></i>
						<span class="title">菜单面板</span> <span class="selected"></span>

				</a></li>

				<li class="start active"><a href="javascript:;"> <i class="icon-cogs"></i>

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
							<li><a href="/">工单管理</a><i class="icon-angle-right"></i></li>
							<li><a href="/basic">工单录入</a></li>
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
				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE FORM PORTLET-->
						<div class="portlet box grey">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>第六采矿厂第三油矿施工单
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a> <a
										href="#portlet-config" data-toggle="modal" class="config"></a>
									<a href="javascript:;" class="reload"></a> <a
										href="javascript:;" class="remove"></a>
								</div>

							</div>

							<div class="portlet-body form">

								<!-- BEGIN FORM-->

								<form action="#" class="form-horizontal">
									<table class="span12">

										<tr class="">
											<td><label>申报单位</label></td>
											<td><input type="text" class="span12 m-wrap" /></td>
											<td>用工时间</td>
											<td><select class="span12 m-wrap"
												data-placeholder="选择用工时间" tabindex="1">
													<option value="1">今天</option>
													<option value="0">明天</option>
											</select></td>
											<td>缓急程度</td>
											<td><select class="span12 m-wrap"
												data-placeholder="选择缓急程度" tabindex="1">
													<option value="1">可缓</option>
													<option value="0">不可缓</option>
											</select></td>
										</tr>
										<tr class="">
											<td><label>施工位置</label></td>
											<td><input type="text" class="span12 m-wrap" /></td>
											<td>施工班组</td>
											<td><select class="span12 m-wrap"
												data-placeholder="选择施工班组" tabindex="1">
													<option value="1">机修班</option>
													<option value="0">电工班</option>
													<option value="1">泵修班</option>
													<option value="0">管焊班</option>
													<option value="1">其它</option>
													
											</select></td>
											<td>选择班组</td>
											<td><input type="text" class="span12 m-wrap" /></td>
										</tr>
										<tr class="">
											<td><label>行走路线</label></td>
											<td><input type="text" class="span12 m-wrap" /></td>
											<td>施工设备</td>
											<td><select class="span12 m-wrap"
												data-placeholder="选择施工设备" tabindex="1">
													<option value="1">吊车</option>
													<option value="0">履带式吊车</option>
													<option value="1">挖沟机</option>
													<option value="0">胶轮式挖掘机</option>
													<option value="1">轮式挖掘装改机</option>
													<option value="1">举升车</option>
													<option value="0">压风机车</option>
													<option value="1">平板拖车</option>
													<option value="0">卡车</option>
													<option value="1">面包车</option>
													<option value="1">自卸货车</option>
													<option value="0">计量车</option>
													<option value="1">擦车</option>
													<option value="0">油水罐车</option>
													<option value="1">绿化水罐车</option>
													<option value="0">热洗清蜡车</option>
													<option value="1">其它</option>
													
											</select></td>
											<td>否定班组</td>
											<td><input type="text" class="span12 m-wrap" /></td>
										</tr>
										<tr>
											<td colspan="3" align="center"><label>工作描述及施工内容</label></td>
											<td colspan="3" align="center">施工现场风险分析及注意事项</td>
										</tr>
										<tr class="">
											<td colspan="3" class="span6 m-wrap"><textarea
													class="span12 m-wrap" rows="3"></textarea></td>
											<td colspan="3" class="span6 m-wrap"><div>1、施工人员持证上岗，穿戴好劳动保护用品。2、严格按相应的操作规程施工。3、施工前做好相应的风险分析，熟悉相应的应急处理程序，检查应急物资的完好情况。4、施工前进行人员分工，明确监护人及监护位置、职责。5、在油、汽、电、高温、高压等场所施工时，按要求做好围挡，悬挂警示牌，如：禁止合闸，有人操作，禁止入内，高压危险等。</div></td>
										</tr>
										<tr>
											<td><label>施工材料</label></td>
											<td colspan="3">
												<table style="width: 100%">
													<tr>
														<td class="span4 m-wrap">材料名称</td>
														<td class="span4 m-wrap">厂家/规格</td>
														<td class="span4 m-wrap">数量</td>
													</tr>
													<tr>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
													</tr>
													<tr>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
													</tr>
													<tr>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
													</tr>
													<tr>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
													</tr>
													<tr>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
													</tr>
												</table>
											</td>
											<td colspan="2">
												<table style="width: 100%; valign: top">
													<tr>
														<td valign="top">其他补充</td>
													</tr>
													<tr>
														<td><textarea rows="5" class="span12 m-wrap"></textarea></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td colspan="6">
												<table>
													<tr class="">
														<td colspan="4" align="center"><span>小队验收签字</span></td>
														<td colspan="3" align="center"><span>维修队签字</span></td>
													</tr>
													<tr class="">
														<td><span>验收人</span></td>
														<td><span>完成时间</span></td>
														<td><span>施工人数</span></td>
														<td><span>工单数</span></td>
														<td><span>班组名称</span></td>
														<td><span>设备牌号</span></td>
														<td><span>辅助班组及设备</span></td>
													</tr>
													<tr class="">
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><div class="input-append date form_datetime">
																<input size="12" type="text" value="" readonly
																	class="m-wrap"> <span class="add-on"><i
																	class="icon-calendar"></i></span>

															</div></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
														<td><input type="text" class="span12 m-wrap" /></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									<div class="control-group"></div>
									<div class="form-actions" style="text-align: right">
										<button type="submit" class="btn blue">确定</button>
										<button type="button" class="btn">取消</button>
									</div>
								</form>

								<!-- END FORM-->

							</div>

						</div>

						<!-- END SAMPLE FORM PORTLET-->

					</div>

				</div>
				<!-- END PAGE CONTENT-->
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
	<script src="./media/js/jquery.flot.js" type="text/javascript"></script>
	<script src="./media/js/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="./media/js/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="./media/js/date.js" type="text/javascript"></script>
	<script src="./media/js/daterangepicker.js" type="text/javascript"></script>
	<script src="./media/js/jquery.gritter.js" type="text/javascript"></script>
	<script src="./media/js/fullcalendar.min.js" type="text/javascript"></script>
	<script src="./media/js/jquery.easy-pie-chart.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="./media/js/bootstrap-datetimepicker.js"></script>
	<script src="./media/js/jquery.sparkline.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="./media/js/app.js" type="text/javascript"></script>
	<script src="./media/js/form-components.js"></script>
	<script src="./media/js/index.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init(); // initlayout and core plugins
			FormComponents.init();
		});
	</script>
</html>