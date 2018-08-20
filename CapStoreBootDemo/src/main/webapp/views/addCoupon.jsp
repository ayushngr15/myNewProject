<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Adding Coupon</title>
<script type="text/javascript">

</script>
</head>
<body style="background-color: lightgrey;">

    <div align="center">
       <h1>Coupons Details</h1>
    </div>
   <center>
      <form:form action="addCoupon" modelAttribute="coupon" method="post">
         <table style="border-style: ridge;"> 
           <tr>
             <td> Coupon Id: </td>
             <td> <form:input path="couponId"/> </td>
           </tr>
           <tr>
             <td> Coupon Name: </td>
             <td> <form:input path="couponName" /> </td>
           </tr>
           <tr>
             <td> Coupon Discount Value: </td>
             <td> <form:input path="couponDiscountValue" /> </td>
           </tr>
           <tr>
             <td> Coupon Start Date: </td>
             <td> <form:input path="couponStartDate" /> </td>
           </tr>
           <tr>
             <td> Coupon End Date: </td>
             <td> <form:input path="couponEndDate"/> </td>
           </tr>
           <tr>
             <td></td>
             <td> <input type="submit" value="Submit" > </td>
           </tr>
         </table>
      </form:form>
   </center>
</body>
</html>