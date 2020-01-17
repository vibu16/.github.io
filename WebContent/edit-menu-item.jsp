<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
<script src="./js/script.js" type="text/javascript"></script>
</head>
<body>
	<header> <span>truYum</span> <img
		src="./images/truyum-logo-light.png" /> <a id="menu"
		href="ShowMenuItemListAdmin">Menu</a> </header>

	<div class="cont">
		<h2>Edit Menu Items</h2>
		<form name="menucard" method="post"
			action="EditMenuItem?menuItemId=${menuItem.id }"
			onSubmit="return validation()">
			<table>
				<tr>
					<td colspan="4"><label for="name">Name</label></td>
				</tr>
				<tr>
					<td colspan="4"><input class="area" type="text" id="name"
						name="txtname" value="${menuItem.name}" size="80" /></td>
				</tr>
				<tr>
					<td><label for="txtprice">Price</label></td>
					<td>Active</td>
					<td><label for="launch">Date of Launch</label></td>
					<td><label for="catt">Category</label></td>

				</tr>
				<tr>
					<td><input class="align-right" type="text" id="txtprice"
						name="txtprice" value="${menuItem.price }" /></td>
					<td><input type="radio" name="active" value="yes" id="price"
						<c:if test="${menuItem.active eq 'true'}">Checked</c:if>><label
						for="price">Yes </label> <label for="price2"><input
							type="radio" name="active" value="no" id="price2"
							<c:if test="${menuItem.active eq 'false'}">Checked</c:if>>No</label>
					</td>
					<td><fmt:formatDate type="date" pattern="dd/MM/yyyy"
							value="${menuItem.dateOfLaunch}" var="formatDate" /> <input
						type="text" id="launch" name="launch" value="${formatDate}">


					</td>
					<td><select name="catogory" id="catt">
							<option value="${menuItem.category}">${menuItem.category}</option>
							<option value="Starters">Starters</option>
							<option value="Main Corse">Main course</option>
							<option value="Deserts">Deserts</option>
							<option value="Drinks">Drinks</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" name="Chbox"
						<c:if test="${menuItem.freeDelivery eq 'true'}">Checked</c:if>
						<c:if test="${menuItem.freeDelivery eq 'false'}"></c:if>>
						<label for="chbox">Free Delivery</label></td>
				</tr>
				<tr>
					<td colspan="2"><input class="bt" type="submit" value="Save"
						name="submit" onClick="validate" /></td>
				</tr>
			</table>
		</form>
	</div>

	<footer>
	<h3>Copyright@2019</h3>
	</footer>
</body>
</html>