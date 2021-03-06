<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu List</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header> <span>truYum</span> <img
		src="./images/truyum-logo-light.png"/ > <a id="menu"
		href="ShowMenuItemListAdmin">Menu</a> </header>

	<div class="cont">
		<h2>Menu Items</h2>
		<table>
			<tr>
				<th class="align-left">Name</th>
				<th class="align-right">Price</th>
				<th class="align-cent">Active</th>
				<th class="align-cent">Date of Launch</th>
				<th class="align-cent">Category</th>
				<th class="align-cent">Free Delivery</th>
				<th class="align-cent">Action</th>
			</tr>
			<c:forEach items="${menuItemList}" var="menu">
				<tr>
					<td class="align-left">${menu.name}</td>
					<td class="align-right">${menu.price}</td>
					<td class="align-cent"><c:if test="${menu.active}">Yes</c:if>
						<c:if test="${!menu.active}">No</c:if></td>
					<td class="align-cent"><fmt:formatDate pattern="dd/MM/yyyy"
							value="${menu.dateOfLaunch}" /></td>
					<td class="align-cent">${menu.category}</td>
					<td class="align-cent"><c:if test="${menu.freeDelivery}">Yes</c:if>
						<c:if test="${!menu.freeDelivery}">No</c:if></td>
					<td class="align-cent"><a
						href="ShowEditMenuItem?menuItemId=${menu.id}" target="_blank">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<footer>
	<h3>Copyright@2019</h3>
	</footer>
</body>
</html>