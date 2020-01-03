<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart Empty</title>
<link rel="stylesheet" type="text/CSS" href="./style/style.css" />
</head>
<body>
	<header> <span id="head">truYum</span> <img
		src="./images/truyum-logo-light.png" /> <a id="nav-menu"
		href="ShowCart">Cart</a> <a id="nav-menu"
		href="ShowMenuItemListCustomer">Menu</a> </header>
	<div>
		<h2 class="content">Cart</h2>
		<p>
			No item in cart.Use 'Add to Cart' option in <a
				href="ShowMenuItemListCustomer">Menu item list.</a>
		</p>
	</div>
	<footer> <span id="text-margin">Copyright @ 2019</span> </footer>
</body>
</html>