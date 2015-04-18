<%@page import="org.linuxkernel.wechat.config.Config"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config.APPLICATION%></title>
<link rel="shortcut icon" href="./media/images/favicon.ico" />
<link href="./media/css/bootstrap.css" rel="stylesheet">
<link href="./media/css/bootstrap-responsive.css" rel="stylesheet">
<link href="./media/css/font-awesome.min.css" rel="stylesheet" />
<link href="./media/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="page-header-fixed">
	<div id="template_header">
		<div class="navbar header navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/"><%=Config.PROJECT_NAME%></a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li><a href="/"><b class="icon-home"></b>欢乐逗逼</a></li>
							<li><a href="/"><b class="icon-comment"></b>欢乐逗逼</a></li>
							<li><a href="/"><b class="icon-envelope"></b>欢乐逗逼</a></li>
							<li><a href="/"><b class="icon-bell"></b>欢乐逗逼</a></li>
							<li><a href="/"><b class="icon-book"></b>欢乐逗逼</a></li>
							<li><a href="/"><b class="icon-download"></b>欢乐逗逼</a></li>
						</ul>
						<ul class="nav pull-right">
							<li class="divider-vertical"></li>
							<li><a href="/"><b class="icon-bell"></b>关于作者</a></li>
							<li><a href="/"><b class="icon-pencil"></b>联系作者</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="template_content" class="page-container row-fluid">
		<img alt="QR Code" src="./media/images/QRcode.jpg">
	</div>
	<div class="footer"><%=Config.COPY_RIGHT%></div>
</body>
</html>
