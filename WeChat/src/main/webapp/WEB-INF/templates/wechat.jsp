<%@page import="org.linuxkernel.wechat.config.Config"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config.PROJECT_NAME%></title>
<link rel="shortcut icon" href="./media/images/favicon.ico" />
</head>
<body class="page-header-fixed">
	<img alt="QR Code" src="./media/images/QRcode.jpg">
	<div class="footer"><%=Config.COPY_RIGHT%></div>
</body>
</html>
