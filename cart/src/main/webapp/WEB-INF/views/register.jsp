<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Registration</title>

</head>
<body>
<div ><c:url var="addAction" value="adduser"></c:url>
<form:form action="${addAction}" commandName="userDetails" method="post">
<form:label path="name" align="center"><spring:message text="Name" /></form:label><form:input path="name" required="true" /><br><br>
<form:label path="userName" align="center"><spring:message text="UserName" /></form:label><form:input path="userName" required="true" /><br><br>
<form:label path="password" align="center"><spring:message text="Password" /></form:label><form:input path="password" required="true" /><br><br>
<form:label path="mobile" align="center"><spring:message text="Mobile Number" /></form:label><form:input path="mobile" required="true" /><br><br>
<form:label path="email" align="center"><spring:message text="Email" /></form:label><form:input path="email" required="true" /><br><br>
<input type="submit" align="center" value="signup"/>
</form:form>
</div>

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body style="padding-top:">
	<div class="container">
	
	
	<c:choose>
				<c:when test="${!empty SuccessMessage}">
					<td colspan="2">
						<div class="alert alert-success fade in">
							<a href="login" class="close" data-dismiss="alert" aria-label="close">&times;</a>${SuccessMessage}
						</div>
					</td>
				</c:when>
			</c:choose>
	
	
	
	<section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" commandName="userDetails"
				method="post">
				<h4>Registration</h4>
				<div>
					<form:input path="name" type="text" placeholder="Name"
						pattern=".{5,10}" required="true" id="username" name="username" 
						title="minimum length for name is 5"/>
				</div>
				<div>
					<form:input path="userName" type="text" placeholder="Username"
					pattern=".{5,10}" required="true" id="username" name="username"
					title="minimum length for username is 5" />
				</div>
				<div>
					<form:input path="password" type="password" placeholder="Password" pattern=".{3,8}"
						required="true" id="password" name="password" title="minimum length for passsword is 3" />
				</div>
				<div>
					<form:input path="email" type="email" placeholder="Email"
						required="true" id="username" name="username" />
				</div>
				<div>
					<form:input path="mobile" type="text" placeholder="Mobile"
						pattern="^[789]\d{9}$" required="true" id="username"
						name="username" title="Enter valid mobile number" />
				</div>
				<div>
					<input type="submit" value="Register" /><a href="login">Sign In</a>
				</div>

			</form:form>
			
		</section>
		
	</div>
	
</body>
</html>