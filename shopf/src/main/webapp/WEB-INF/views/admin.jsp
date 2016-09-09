<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>CLASSIC CURVES</title>
</head>
<body>


<div class="jumbotron" style="padding: 50px; margin: 0px">
	<h1>CLASSIC CURVES</h1>
	<h2>Admin Module</h2>
</div>
<div class="btn-group btn-group-justified">
	<div class="btn-group">
		<form action="product">
			<button type="submit" class="btn btn-deafult"> ADD PRODUCT </button>
		</form>
	</div>
	<div class="btn-group">
		<form action="category">
			<button type="submit" class="btn btn-deafult"> ADD CATEGORY </button>
		</form>
	</div>
	<div class="btn-group">
		<form action="supplier">
			<button type="submit" class="btn btn-default"> ADD SUPPLIER</button>
		</form>
	</div>
</div>

 
 
  
 
  

<div>
<c:choose>
    <c:when test="${ProductPageClicked}">
       <c:import url="/WEB-INF/views/addproduct.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${CategoryPageClicked}">
       <c:import url="/WEB-INF/views/addcategory.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${SupplierPageClicked}">
       <c:import url="/WEB-INF/views/addsupplier.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>
</div>


</body>
</html>