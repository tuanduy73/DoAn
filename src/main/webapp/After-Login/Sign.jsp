<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- Boostrap CSS -->
  	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/PetForm.css">
	<link rel="stylesheet" type="text/css" href="../css/fontsign.css">
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.9.0-web/css/all.css">
</head>
<body>
	<span class="home"></span>
	<form action="SignOutPost.jsp" method="post">
		<label class="register">Register For Tuan Duy Account</label> <br> <br>
		<label> Username <span>*</span> <br> 
			<input type="text" name="TEN" placeholder="username" size="50" class="information name"> <span><i class="fas fa-exclamation-triangle error"> Error</i><i class="fas fa-check-circle success"></i></span><br> <br> 
		</label>
		<label> Password <span>*</span> <br> 
			<input type="password" name="MATKHAU" placeholder="password" size="50" class="information name"> <span><i class="fas fa-exclamation-triangle error"> Error</i><i class="fas fa-check-circle success"></i></span><br> <br> 
		</label>
		<label > Phone Number <span>*</span><br> 
			<input type="text" name="PHONE" placeholder="Your answer" size="50"class="information phone"> <span><i class="fas fa-exclamation-triangle error2"> Error</i><i class="fas fa-check-circle success2"></i></span><br> <br> 
		</label>
		<label> Email <span>*</span><br> 
			<input type="text" name="EMAIL" placeholder="Your answer" size="50" class="information email"> <span><i class="fas fa-exclamation-triangle error3"> Error</i><i class="fas fa-check-circle success3"></i></span><br> <br> 
		</label>
		
		<input type="submit" value="submit" class="btn btn-dark"><br><br>
		<a href="login.html" class="text-dark">Already have account?</a>
	</form>
	<!-- Bootstrap -->
	<script type="text/javascript" src="../WebJS/LibraryJS/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../WebJS/LibraryJS/bootstrap.min.js"></script>
	<script type="text/javascript" src="../WebJS/LibraryJS/PetForm.js"></script>
</body>
</html>