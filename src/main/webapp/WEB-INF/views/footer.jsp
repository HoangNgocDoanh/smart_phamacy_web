<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="${pageContext.request.contextPath}/resource/js/jquery.js"/>"></script>
<script src="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="${pageContext.request.contextPath}/resource/css/overall.css"/>">
</head>
<body>
	<footer class="footer-distributed">
	<div class="footer-right">
		<a href="<c:url value="/trang-chu"/>"><span
			class="glyphicon glyphicon-home"></span></a>
		<a href="<c:url value="/login"/>"><span
                        class="glyphicon glyphicon-user"></span>></a> 
                <a href="/contactus"><span
			class="glyphicon glyphicon-envelope"></span></a>
	</div>
	<div class="footer-left">

		<p class="footer-links">
			<a href="<c:url value="/trang-chu"/>">Home</a> · <a
				href="<c:url value="/aboutus"/>">About Us</a> · <a href="<c:url value="/getAllProducts" />">Product
				List</a> · <a href="<c:url value="/contactus"/>">Contact Us</a>
		</p>

		<p>Created by Nhan & Doanh &copy; 2020</p>
	</div>
	</footer>
</body>
</html>