<%@page import="com.model.User"%>
<%@page import="com.dao.OrderDAO"%>
<%@page import="com.model.Order"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>my order</title>
	<%User user = (User) session.getAttribute("user");
	out.println(user.getName());%>
</head>
<title>My order list</title>
</head>

<h3> ORDER LIST</h3>
<table border="1">
<thead>
	<tr>
	    <th>ORDER_ID</th>
		<th>USER_ID</th>
		<th>USER NAME</th>
		<th>BOOK_ID</th>
		<th>BOOK NAME</th>
		<th>QTY</th>
		<th>ORDER_STATUS</th>
	</tr>
</thead>


<%
User user1 = (User) session.getAttribute("user");

Order order=new Order();
int id=user.getId();

OrderDAO dao = new OrderDAO();

List<Order> orderlist = dao.myorder(id);

for (Order a: orderlist ) {
	out.println("<tr>");
	out.println("<td>"+a.getId() +"</td>");
	out.println("<td>" + a.getUser_id() + "</td>");
	out.println("<td>" + a.getUsername() + "</td>");
	out.println("<td>" + a.getBook_id() + "</td>");
	out.println("<td>" + a.getBookname() + "</td>");
	out.println("<td>" + a.getQty() + "</td>");
	out.println("<td>" + a.getStatus() + "</td>");
	out.println("</tr>");
}

%>

</table><br><br>
<body><a href="home.jsp">Home</a>

</body>
</html>