<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/x-icon" href="<c:url value="${pageContext.request.contextPath}/resource/images/favicon1.png"/>" />
<link rel="stylesheet"
	href="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="${pageContext.request.contextPath}/resource/js/jquery.js"/>"></script>
<script src="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="${pageContext.request.contextPath}/resource/css/overall.css"/>">

</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">

		<div class="nav navbar">
			<img class="navbar-brand"
				src="<c:url value="${pageContext.request.contextPath}/resource/images/smartpharmacy-logo1.jpg"/>"
				href="<c:url value="/trang-chu"/>" width="150px" height="100px"
				alt="logo-image"/>
		</div>

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/trang-chu" />">Smart Phamarcy</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href=" <c:url value="/trang-chu" />">Home</a></li>
				<li><a href=" <c:url value="/getAllProducts" />">Product
						List</a></li>
				<li><a href=" <c:url value="/aboutus" />">About Us</a></li>
				
				<c:if test="${sessionScope.role != 'ROLE_ADMIN'}">
                                    <li><a href=" <c:url value="/contactus" />">Contact Us</a></li>
                                </c:if>
				
				<!-- Only admin can view this link -->
				<c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
					<li><a href=" <c:url value="/admin/product/addProduct" />">Add
							Product</a></li>
				</c:if>
			</ul>

			<ul class="nav navbar-nav navbar-right">

				<c:if test="${!empty sessionScope.user}">
                                    <c:if test="${sessionScope.role == 'ROLE_ADMIN'}">
                                        <li><a href="<c:url value="/admin/GetUserList" />"><span
							class="glyphicon glyphicon-shopping-user"></span>Welcome..${sessionScope.user}</a></li>
                                    </c:if>
                                                        
                                    <c:if test="${sessionScope.role != 'ROLE_ADMIN'}">
                                        <li><a href="<c:url value="#" />"><span
							class="glyphicon glyphicon-shopping-user"></span>Welcome..${sessionScope.user}</a></li>
                                    </c:if>

                                    <c:if test="${sessionScope.role == 'ROLE_USER'}">
                                            <li><a href="<c:url value="/cart/getCartById" />"><span
                                                            class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
                                    </c:if>
                                    <li><a href="<c:url value="/logout" />"><span
                                                    class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
			</ul>


			<ul class="nav navbar-nav navbar-right">

				<c:if test="${sessionScope.user==null}">
					<li><a href="<c:url value="/cart" />"><span
							class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
					<li><a href="<c:url value="/register" />"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>



</body>
</html>