<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Remove Coupon</title>
<script type="text/javascript">
  function validate() {
	  var id = document.getElementById("cid");
	  if(id.value.length < 1) {
		  alert("Coupon Id must be a valid coupon Id");
		  return false;
	  }

	  alert("Coupon with id " + id.value + " has succesfully removed");
  }
</script>
</head>
<body style="background-color: lightgrey;">

    <div align="center">
       <h1>Coupons Details</h1>
    </div>
   <center>
      <form:form action="#">
         <table style="border-style: ridge;"> 
           <tr>
             <td> Coupon Id: </td>
             <td> <input type="text" name="couponId" id="cid"> </td>
           </tr>
           <tr>
             <td></td>
             <td> <input type="submit" value="Submit" onClick="validate()"> </td>
           </tr>
         </table>
      </form:form>
   </center>
</body>
</html>