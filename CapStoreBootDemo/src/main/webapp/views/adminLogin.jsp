<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin HomePage</title>
 <script type="text/javascript">
    function validate() {
    	var username = document.getElementById("uname");
    	
    	if(username.value.length == 0) {
    		alert("Enter Valid UserName");
    		return false;
    	}
    	
    	var password = document.getElementById("pass");
    	
    	if(password.value.length < 8){
    		alert("Enter Valid Password");
    		return false;
    	}
    }
 </script>
</head>
<body>
  <center>
  <form action="/adminHome" method="post">
    <table>
       <tr>
       <td>
          Admin UserName: 
        </td>
       <td>
          <input type="text" id="uname">
        </td>
        </tr>
        <tr>
        <td>
          Admin Password: 
        </td>
        <td>
          <input type="password" id="pass">
        </td>
       </tr>
       <tr>
         <td></td>
         <td> <input type="submit" value="Login" onClick="return validate()"> </td>
       </tr>
    </table>
  </form>
  </center>
</body>
</html>