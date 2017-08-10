<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add book</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div align="center">
<h1> ADD BOOK </h1>
	<form action="BookController" method="post" class="form-horizontal" >

	
		Book Name:<input type="text" name="name" /><br> <br> 
		Book price:<input type="text" name="price" /><br> <br> 
		Book author name : <input type="text" name="authorname" /><br> <br>
		<button type="submit" value="submit" class="btn btn-success" >ADD</button>
		<button type="reset" class="btn btn-info">reset</button>



	</form>
	</div>


<jsp:include page="putter.jsp"></jsp:include>
</body>
</html>