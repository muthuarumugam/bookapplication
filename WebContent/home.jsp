
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
	    if(user!=null){
%>	    	
		<div class="alert alert-success">
	  <strong>Login Success !</strong> 
	</div>
	 <%   
		String message=(String) request.getAttribute("LOGIN SUCESS");
	    
	      %>
	<div class="alert alert-info">
	<strong><%=message %> : </strong> 
	<%=user.getName() %>
	</div>

<%
String message1 = (String) request.getAttribute("ADD SUCESS");
if (message1 != null) { %> 
	
	<div class="alert alert-success">
	  <strong>Success!</strong> <%=message1 %>
	</div>

	
<%} } 

	    else{%>
		

	    <h3>This is home....</h3><br>
	    <h4>
	    you order any book you must be login  book application or create a new account..
	    </h4>

	    	   <% }


String message2 = (String) request.getAttribute("SUCESS");
if (message2 != null) {
	out.println(message2);
}




%>	

	


</div>	
	</body>
</html>