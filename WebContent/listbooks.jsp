<%@page import="com.model.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>list book</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<h3> BOOK LIST</h3>
<table border="1" id="booktable"class="table bordered">
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
</table><br>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script>
       $(document).ready(function() {
              $('#booktable').DataTable();
       });
</script>
</div>

<jsp:include page="putter.jsp"></jsp:include>
</body>
</html>