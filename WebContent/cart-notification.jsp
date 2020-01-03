<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
		<head>
            <title>Cart Notification</title>
            <link rel="stylesheet" type="text/CSS" href="./style/style.css" />
		</head>    
        <body>
            <header>
                <span id="head" >truYum</span>
                <img src="./images/truyum-logo-light.png" />
				<a id="nav-menu" href="ShowCart">Cart</a>
                <a id="nav-menu" href="ShowMenuItemListCustomer">Menu</a>
            </header>
                <div>
                    <h2 class="content" >Menu Items</h2> 
					<p id="center">Item removed from cart successfully</p>
					<table class="content">
                        <tr>
                            <th class="title-name">Name</th>
                            <th class="title-text">Free Delivery</th>
                            <th class="title-price">Price</th>
                            <th class="title-text">Action</th>
                        </tr>
                        <tr>
                            <td class="title-name">Sandwich</td>
                            <td class="title-text">Yes</td>
                            <td class="title-price">Rs.99.00</td>
                            <td class="title-text"><a href="cart-notification.html" class="link-color">Delete<a></td>
                        </tr>
                        <tr>
                            <td class="title-name">Burger</td>
                            <td class="title-text">No</td>
                            <td class="title-price">Rs.129.00</td>
                            <td class="title-text"><a href="cart-notification.html" class="link-color">Delete<a></td>
                        </tr>
						<tr>
							<td></td>
							<td class="title-text"><b>Total</b></td>
							<td class="title-price"><b>Rs.228.00</b></td>
						</tr>
                    </table>
                </div>            
            <footer>
				<span id="text-margin">Copyright @ 2019</span>
			</footer>         
        </body>
</html>
