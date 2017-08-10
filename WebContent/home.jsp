
<%@page import="com.model.User"%>
<%@page import="com.dao.BookDAO"%>
<%@page import="com.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 

<title>home</title>
</head><body>
<jsp:include page="header.jsp" ></jsp:include>
<div class="container">

	<% 
	     User user=(User)session.getAttribute("user");
	
	    if(user!=null)
	    { %>
	<div class="alert alert-success">
	  <strong>WEL COME : <%=user.getName() %></strong> 
	</div>

	
<%}

	    else{ %>
		

	    <h3>This is home....</h3><br>
	    <h4>
	    you order any book you must be login  book application or create a new account..
	    </h4>


	
<%} %>
</div>	
	
<jsp:include page="putter.jsp"></jsp:include></body>
</html>