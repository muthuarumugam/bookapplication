
<%@page import="com.model.User"%>
<%@page import="com.dao.BookDAO"%>
<%@page import="com.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
</head>


<h3> BOOK LIST</h3>
<table border="1">
<thead>
	<tr>
	    <th>id</th>
		<th>name</th>
		
		<th>price</th>
		<th>author_name</th>
	</tr>
</thead>


<%
BookDAO bookdao = new BookDAO();
List<Book> booklist = bookdao.listbook();

for (Book a: booklist) {
	out.println("<tr>");
	out.println("<td>"+a.getBookId() +"</td>");
	out.println("<td>" + a.getName() + "</td>");
	out.println("<td>" + a.getPrice() + "</td>");
	out.println("<td>" + a.getAuthorname() + "</td>");
	
	out.println("</tr>");
}

%>

</table><br><br>
<%
 	String Message = (String) request.getAttribute("LOGIN SUCESS");
	User user = (User) session.getAttribute("user");
	if (Message != null) {
		out.println(Message);
	}
	out.println( user.getName());
%><br>
<%
String Message2 = (String) request.getAttribute("ADD SUCESS");
if (Message2 != null) {
	out.println(Message2);
}



%>
	


<body><h2 > ADD BOOK  </h2>
	<form action="BookController" method="post" >
		Book Id :<input type="text" name="id" /><br> <br> 
		Book Name:<input type="text" name="name" /><br> <br> 
		Book price:<input type="text" name="price" /><br> <br> 
		Book authorname : <input type="text" name="authorname" /><br> <br>
		<button type="submit" value="submit">ADD</button>
		<button type="reset">reset</button>



	</form>
	<a href="order.jsp">ORDER </a>
	<br><br>
	<br>
<a href="myorder.jsp">ONLY SHOW MY ORDER</a>
<br><br>
<form action="LogoutController" method="post">
<button type="submit" value="submit" >Logout</button>

</form>
	
	</body>
</html>