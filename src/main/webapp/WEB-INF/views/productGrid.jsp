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
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}

.w3-sidenav a, .w3-sidenav h4 {
	font-weight: bold
}
</style>
</head>
<body>
	<hr>
	<div class="w3-row-padding" style="padding:0px 30px; margin-bottom: 20px">
		<div class="w3-third w3-container w3-margin-bottom">
			<img src="<c:url value="${pageContext.request.contextPath}/resource/images/products/two.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity">
			<div class="w3-container w3-white">
				<p>
					<b>Metoclopramide 10mg</b>
				</p>
				<p>
                                    <ul>
                                        <li>Price - 10,000.00</li>
                                    </ul>
				</p>
			</div>
		</div>
		
		<div class="w3-third w3-container w3-margin-bottom">
			<img src="<c:url value="${pageContext.request.contextPath}/resource/images/products/seven.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity">
			<div class="w3-container w3-white">
				<p>
					<b>Omega-3 Fish Oil Solgar</b>
				</p>
                                <p>
                                    <ul>
					<li>Price - 8,000.00</li>
                                    </ul>
                                </p>
			</div>
		</div>
		<div class="w3-third w3-container w3-margin-bottom">
			<img src="<c:url value="${pageContext.request.contextPath}/resource/images/products/five.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity">
			<div class="w3-container w3-white">
				<p>
					<b>Nitrofurantoin 50mg</b>
				</p>
				<p>
					<ul>
						<li>Price - 18,000.00</li>
					</ul>
				</p>
			</div>
		</div>
	</div>
	
		<hr>
	<div class="w3-row-padding" style="padding:0px 30px; margin-bottom: 20px">
		<div class="w3-third w3-container w3-margin-bottom">
			<img src="<c:url value="${pageContext.request.contextPath}/resource/images/products/2.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity">
			<div class="w3-container w3-white">
				<p>
					<b>Blackmores Glucosamine</b>
				</p>
				<p>
					<ul>
						<li>Price - 28,000.00</li>
					</ul>
				</p>
			</div>
		</div>
		
		<div class="w3-third w3-container w3-margin-bottom">
			<img src="<c:url value="${pageContext.request.contextPath}/resource/images/products/1.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity">
			<div class="w3-container w3-white">
				<p>
                                    <b>Aerius Desloratadine 5mg</b>
				</p>
                                <p> <ul>
                                        <li>Price - 8,000.00</li>
                                    </ul>
                                </p>
                                   
			</div>
		</div>
		<div class="w3-third w3-container w3-margin-bottom">
			<img src="<c:url value="${pageContext.request.contextPath}/resource/images/products/4.jpg"/>" alt="Norway" style="width: 100%"
				class="w3-hover-opacity">
			<div class="w3-container w3-white">
				<p>
					<b>Enterogermina (5ml)</b>
				</p>
				<p>
					<ul>
						<li>Price - 10,000.00</li>
					</ul>
				</p>
				
			</div>
		</div>
	</div>
</body>
</html>