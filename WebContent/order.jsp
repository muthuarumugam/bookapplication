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

<body><jsp:include page="header.jsp"></jsp:include>
<div class="container">
<%	
User user =(User)session.getAttribute("user");
String message = (String)request.getAttribute("INFO_MESSAGE");
if (message !=null )
{
	out.println(message);
}
%>

<h2> Order Books</h2>

<form action="OrderController" method="post">
  <div class="form-group">
    <label for="user_id">User ID:</label>
    <input type="text" class="form-control" name="user_id" readonly value="<%=user.getId()%>" placeholder="enter correct book id">
  </div>
  <div class="form-group">
    <label for="book_id"> Book ID :</label>
    <input type="text" class="form-control" name="book_id" required>
  </div>
  <div class="form-group">
    <label for="qty"> Quantity:</label>
    <select name="qty"  >
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
  </div>
 
  <button type="submit" class="btn btn-success">Submit</button>
</form>

 


</div>

<jsp:include page="putter.jsp"></jsp:include>
</body>
</html>