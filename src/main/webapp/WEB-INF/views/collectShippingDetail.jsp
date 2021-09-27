<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Check out!</title>
            <link rel="stylesheet"
            href="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css"/>">
            <script src="<c:url value="${pageContext.request.contextPath}/resource/js/jquery.js"/>"></script>
            <script src="<c:url value="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"/>"></script>
            <link rel="stylesheet" type="text/css"
            href="<c:url value="${pageContext.request.contextPath}/resource/css/register.css"/>">

	</head>
        <%@ include file="/WEB-INF/views/navbar.jsp"%>
	<body style="padding: 0px;">

	<div class="container" style="margin-bottom: 19px; height: 100vh;">
			<h1 class="well">Confirm Shipping Address!</h1>
			<div class="col-lg-12 well">
				<div class="row">

					<form:form method="post" action="/checkout/confirm" modelAttribute="customer">
						<div class="col-sm-12">
							<div class="row">
							
							<div><center>Shipping Address</center></div>
							<div class="form-group">
								<label for="address">Address</label>
								<form:textarea type="text" 
									class="form-control" path="customer.shippingInfo.address"></form:textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="city">City</label>
									<form:input type="text" 
										class="form-control" path="customer.shippingInfo.city"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="state">State</label>
									<form:input type="text" 
										class="form-control" path="customer.shippingInfo.state"></form:input>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="country">Country</label>
									<form:input type="text" 
										class="form-control" path="customer.shippingInfo.country"></form:input>
								</div>
								<div class="col-sm-6 form-group">
									<label for="zipcode">Zipcode</label>
									<form:input type="text" 
										class="form-control" path="customer.shippingInfo.zipcode"></form:input>
								</div>
							</div>
							<div class="form-actions">
								<button style="float: left; margin-left: 0px" class="btn btn-lg btn-default">Back</button>
								<button type="Submit" style="margin-right: 10px; margin-left: 0px" class="btn btn-lg btn-info">Next</button>
								<button style="float: right;" class="btn btn-lg btn-default">Cancel</button>
							</div>
						</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	  </body>
          <%@ include file="/WEB-INF/views/footer.jsp"%>
</html>
