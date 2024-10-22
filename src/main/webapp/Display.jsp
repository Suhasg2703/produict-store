<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Products Table</h1>

	<table border="10px" >
		<tr align="center">
			<th>Product_Id</th>
			<th>Product_Name</th>
			<th>Product_Brand</th>
			<th>Product_Price</th>
			<th>Product_Quantity</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>

		<c:forEach var="p" items="${data}">
			<tr align="center">
				<td>${p.getId()}</td>
				<td>${p.getName()}</td>
				<td>${p.getBrand()}</td>
				<td>${p.getPrice()}</td>
				<td>${p.getQuantity()}</td>
				<td><a href="delete?id=${p.getId()}">delete</a></td>
				<td><a href="edit?id=${p.getId()}">update</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>