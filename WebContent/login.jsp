<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>


<body  ><jsp:include page="header.jsp"></jsp:include>
<div class="container" align="center">
<%
String errorMessage= (String) request.getAttribute("ERROR");
if(errorMessage != null)
{
out.println(errorMessage);
}
%>
	<form method="post" action="SigninController" class="form-horizontal">
		<h1 align="center">LOGIN</h1>			
		<div class="form-group">
    <label class="control-label col-sm-2" for="email" required autofocus >Email Id :</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" name="email" placeholder="Enter email">
    </div>
  </div>
		<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password" placeholder="Enter password">
				</div>
			</div>
			 <div class="form-group"> 
    <div class="col-sm-offset-1 col-sm-10">
      <button type="submit" class="btn btn-success">Submit</button>
      <button type="reset" class="btn btn-info">Reset</button>
    
    </div>
  </div>	</form>
</div>
</body>
</html>