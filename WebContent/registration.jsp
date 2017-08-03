<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body> <jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<h3 align="center">REGISTRATION</h3>

		<form method="post" action="register" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name* :</label>
				<div class="col-sm-10">
					<input type="text" name="name" class="form-control" required autofocus placeholder="Enter your name"><br>
				</div>
			</div>
			<div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
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
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success">Submit</button>
      
      <button type="reset" class="btn btn-info">Reset</button>
    
    </div>
  </div>
   
		</form>
	</div>
</body>
</html>