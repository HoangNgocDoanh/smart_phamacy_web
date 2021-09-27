<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
<link rel="icon" type="image/x-icon"
	href="<c:url value="${pageContext.request.contextPath}/resource/images/favicon1.png"/>" />
<link rel="stylesheet"
	href="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="${pageContext.request.contextPath}/resource/js/jquery.js"/>"></script>
<script src="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="${pageContext.request.contextPath}/resource/css/register.css"/>">

</head>
<body>
	<%@ include file="/WEB-INF/views/navbar.jsp"%>
	<div class="container" style="margin-bottom: 19px; height: 100vh;">
		<h1 class="well text-center">Register Here !</h1>
		<div class="col-lg-12 well">
			<div class="row">
                                
                            
                                <!-- will display error -->
                                <c:if test="${not empty error}">
                                        <div class="error" style="color: #ff0000;">${error}</div>
                                </c:if>
				<!--  RegisterServlet  form -->
				<c:url value="/register" var="url"></c:url>
				<form:form method="post" action="${url}" modelAttribute="CustomerInfo">
					<div class="col-sm-12">
						<div>
							<center>User Details</center>
						</div>
                                                <div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="firstName">First Name</form:label>
								<form:input type="text" placeholder="Enter First Name.."
									class="form-control" path="firstName"></form:input>
								<form:errors path="firstName"></form:errors>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="lastName">Last Name</form:label>
								<form:input type="text" placeholder="Enter Last Name.."
									class="form-control" path="lastName"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="customerPhone">Phone Number</form:label>
								<form:input type="text" placeholder="Enter Phone Number.."
									class="form-control" path="customerPhone"></form:input>
								<form:errors path="customerPhone"></form:errors>
							</div>
                                                        <div class="col-sm-6 form-group">
								<form:label path="userInfo.emailId">Email</form:label>
								<form:input type="text" placeholder="Enter Email.."
									class="form-control" path="userInfo.emailId"></form:input>
								<form:errors path="userInfo.emailId"></form:errors>
							</div>
						</div>
						
                                                <hr>
						
                                                <div>
							<center>Shipping Address</center>
						</div>
						<div class="form-group">
							<form:label path="shippingInfo.address">Address</form:label>
							<form:textarea type="text" placeholder="Enter Shipping Address.."
								class="form-control" path="shippingInfo.address"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="shippingInfo.city">City</form:label>
								<form:input type="text" placeholder="Enter Current City.."
									class="form-control" path="shippingInfo.city"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="shippingInfo.state">State</form:label>
								<form:input type="text" placeholder="Enter your State.."
									class="form-control" path="shippingInfo.state"></form:input>
								<form:errors path="shippingInfo.state"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="shippingInfo.country">Country</form:label>
								<form:input type="text" placeholder="Enter your country.."
									class="form-control" path="shippingInfo.country"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="shippingInfo.zipcode">Zipcode</form:label>
								<form:input type="text" placeholder="Enter zipcode.."
									class="form-control" path="shippingInfo.zipcode"></form:input>
								<form:errors path="shippingInfo.zipcode"></form:errors>
							</div>
						</div>				
                                                                                                
                                                <div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="userInfo.password">Password</form:label>
								<form:input type="password" placeholder="********"
									class="form-control" path="userInfo.password" id="pass"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label> 
                                                                <input type="password"
									placeholder="********" class="form-control" id="confirmpass">
							</div>
						</div>
                                                                
                                                <hr>
                                                                
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info"
								onclick="return Validate()">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

        <%@ include file="/WEB-INF/views/footer.jsp"%>
        
	<!-- Validating Password -->
	<script type="text/javascript">
		function Validate() {
			var password = document.getElementById("pass").value;
			var confirmpass = document.getElementById("confirmpass").value;
			if (password != confirmpass) {
				alert("Password does Not Match.");
				return false;
			}
			return true;
		}
	</script>
</body>

</html>