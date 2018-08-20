<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
.mySlides {display:none;}
a:hover
{
color:red;
text-transform: uppercase;

}
a:visited
{
color:black;

}
a:active{

color:yellow;
}

</style>
</head>
<body >

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Capstore</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="/addMerchant">Add Merchant</a></li>
	  
      <li><a href="/removeMerchant">Remove Merchant</a></li>
      <li><a href="/getAllMerchants">View All Merchants</a></li>
	  <li><a href="/addCoupon">Add Coupons</a></li>
	  <li><a href="/removeCoupon">Remove Coupons</a></li>
	  <li><a href="/addDiscount">Add Discount</a></li>
	  <li><a href="/removeDiscount">Remove Discount</a></li>
	  <li><a href="/getAllCustomer">View All Customers</a></li>
	  <li><a href="/getAllProduct">View All Products</a></li>
	  <li><a href="/updateCategory">Update Category</a></li>
	 
    </ul>
	
  </div>
</nav>
  
</body>
</html>
