<%@page import="com.dao.OrderDAO"%>
<%@page import="com.model.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List order</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<h3> ORDER LIST</h3>
<table border="1" id="orderlist" class="table bordered">
<thead>
	<tr>
	    <th>ORDER_ID</th>
		<th>USER_ID</th>
		<th>BOOK_ID</th>
		<th>QTY</th>
		<th>ORDER_STATUS</th>
	</tr>
</thead>


<%
OrderDAO dao = new OrderDAO();
List<Order> orderlist = dao.listorder();

for (Order a: orderlist ) {
	out.println("<tr>");
	out.println("<td>"+a.getId() +"</td>");
	out.println("<td>" + a.getUser_id() + "</td>");
	out.println("<td>" + a.getBook_id() + "</td>");
	out.println("<td>" + a.getQty() + "</td>");
	out.println("<td>" + a.getStatus() + "</td>");
	out.println("</tr>");
}

%>

</table><br><br>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>
       $(document).ready(function() {
              $('#orderlist').DataTable();
       });
</script>

	


<%String message = (String)request.getAttribute("INFO_MESSAGE");
if (message !=null )
{
	out.println(message);
}%><br>
</div>
</body>
</html>