<%@page import="com.model.User"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<%
User user = (User) session.getAttribute("user");
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Online Book Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      <li ><a href="listbooks.jsp">List Books</a></li>
      <% if(user!=null){ %>
      <li><a href="order.jsp">Order</a></li>
      <li><a href="addbook.jsp">Add Book</a></li>
      <li><a href="myorder.jsp">My Orders</a></li>
      <li><a href="orderlist.jsp">All Orders</a></li>
      
      <%} %>
      
    </ul> <ul class="nav navbar-nav navbar-right">       
      
	<%
	if(user!=null){%>
		<li><a href="#"><%=user.getName() %></a></li>	
				<li><a href="LogoutController"> logout</a></li>		
<%}else
{%>
	<li><a href="registration.jsp"> Register</a></li>
	<li><a href="login.jsp"> Login</a></li>
<%}
	%></ul>
  </div>
</nav>
