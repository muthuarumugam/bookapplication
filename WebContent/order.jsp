<%@page import="com.model.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
</head>
<body bgcolor="pink">

<body>
<h2> Order Books</h2>
<form action="OrderController" method="post">
<%		User user =(User)session.getAttribute("user");



 %>
 welcome  :<%=user.getName() %>
 
 
 <br/>
User id:<input type="text" name="userid" value="<%=user.getId() %>"autofocus required readonly></br>
Select book:
<select name="bookid" required ><br>
<option value="1001">Java</option>
<option value="1002">Java core</option>
<option value="1003">C++</option>
</select>
<br>
Quantity:<select name="qty" required ><br>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
<button type="submit">submit</button>
</form>



</body>
</html>