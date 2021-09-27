<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="icon" type="image/x-icon" href="<c:url value="${pageContext.request.contextPath}/resource/images/favicon1.png"/>" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resource/js/jquery-3.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/header.css">
<style type="text/css">
@media ( min-width : 1200px) .container {
	width
	:
		
	1300
	px
		
	;
}

@media ( min-width : 992px) .col-md-4 {
	margin-left
		
	:
	330px
		
	;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/navbar.jsp"%>
	<div class="container" style="margin-top: 30px; margin-bottom: 180px; width: 500px; height: 100vh;">
            <div class="col">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" align="center">Sign In</h3>
				</div>
				<div class="panel-body">

					<!-- will display after contactUs form registerd successfully -->
					<c:if test="${!empty querySuccess}">
						<div class="error" style="color: #ff0000;">${querySuccess}</div>
					</c:if>

					<!-- will display after registration form registerd successfully -->
					<c:if test="${not empty registrationSuccess}">
						<div class="error" style="color: #ff0000;">${registrationSuccess}</div>
					</c:if>
					<!-- will display after logged out successfull -->
					<c:if test="${not empty logout}">
						<div class="error" style="color: #ff0000;">${logout}</div>
					</c:if>
                                                
                                        <!-- will display after invalid login -->
					<c:if test="${not empty invalid}">
						<div class="error" style="color: #ff0000;">${invalid}</div>
					</c:if>

					<form name="loginForm"
						action="<c:url value="/login"/>" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail"
									name="username" type="email">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="password" type="password">
							</div>
							<div class="checkbox">
								<c:if test="${not empty error}">
									<div class="error" style="color: #ff0000">${error}</div>
								</c:if>
							</div>
							<!-- Change this to a button or input when using this as a form -->
							<div id="button">
								<button type="submit" class="btn btn-sm btn-success"
									style="margin-right: 79px; margin-left: 65px;">Login</button>
								<a href="<c:url value="/register"/>"
									class="btn btn-sm btn-success" style=" margin-right: 79px; margin-left: 75px;">Register</a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>