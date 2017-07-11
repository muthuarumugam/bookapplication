<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign</title>


</head>


<body>
<%
String errorMessage= (String) request.getAttribute("ERROR");
if(errorMessage != null)
{
out.println(errorMessage);
}
%>
	<form method="post" action="SigninController">
		<h1 align="center">LOGIN</h1>
		Email Id *:<input type="text" name="email" /><br> <br>
		Password* :<input type="password" name="password" /><br> <br>
		<button type="submit" value="submit">Submit</button>
		<button type="reset">Reset</button>
		<br>

		<a  href="registration.html">Create an new account</a>
	</form>

</body>
</html>