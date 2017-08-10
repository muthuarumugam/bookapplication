<%@page import="com.model.User"%>
<%@page import="com.dao.OrderDAO"%>
<%@page import="com.model.Order"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>My order list</title>
</head><body>

<jsp:include page="header.jsp" ></jsp:include>
<div class="container">
<%
	String message= (String) request.getAttribute("INFO_MESSAGE");
	if(message!=null){
		out.println(message);
	}

%>
<h3> ORDER LIST</h3>
<table border="1" id="myorderlist" class="table bordered">
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
User user = (User) session.getAttribute("user");

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

%></table><br><br>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>
       $(document).ready(function() {
              $('#myorderlist').DataTable();
       });
</script>


<br><br><h1>Cancel My order </h1>
<form action="OrderCancelController" method="post">
 
  <div class="form-group">
    <label for="orderid">ORDER ID :</label>
    <input type="text" class="form-control" name="orderid">
  </div>
<button type="submit" class="btn btn-danger">are you sure to order cancel</button>
</form>
</div>

<jsp:include page="putter.jsp"></jsp:include>
</body>
</html>