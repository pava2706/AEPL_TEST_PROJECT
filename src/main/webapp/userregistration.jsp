<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
<style>
html,body{
background-image: url("https://cdn.pixabay.com/photo/2015/11/26/07/47/hands-1063442_640.jpg");
background-repeat: no-repeat;
background-size: 100%;
}

.loader {
	display: none;
	
}

.btn{
	background-color: maroon;
	border-radius: 20px;
	color: white;
	width: 120px;;
	text-align: center;
	font-size: 30px;
	display:inline;
	
	align-items: center;

}
#bt{
background-color: gray;
}

#bt:hover{
background-color: red;
}

#bt1:hover{
background-color: green;
}

h1{
font-family: cursive;
font-size: 50px;
font: italic;
color: silver;
}

form {
     color:white;
     font-size:20px;
     font-family:cursive;
    max-width: 390px;
    margin: 0 auto;
    background-image:url("https://cdn.pixabay.com/photo/2017/01/08/20/25/abstract-1963884_1280.jpg");
    padding: 20px;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  input,select{
  border-radius:10px;
  font-size: 17px;
  letter-spacing: 1px;
  padding-left: 10px;
  }
</style>
</head>
<body>
        <h1 style="color: orange;">${msg}</h1>

	 <h1 align="center">Registration Form</h1> 

	<form action="user" >
		<label for="name">Name:</label>
		 <input type="text" id="name" name="Name" required
			pattern="[A-Z a-z]+" placeholder="Enter your name"> <br>
		<br> <label for="email">Email:</label>
		 <input type="email" id="email" name="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" required placeholder="Enter your email"> <br>
		<br> 
		<label for="mobile">Mobile Number:</label> 
		<input type="tel" id="mobile" name="Mobile_Number" required pattern="^[6-9][0-9]{9}$"
			placeholder="Enter your number"> <br> <br> 
			<label for="dob">Date of Birth:</label> 
			<input type="date" id="dob" name="Date_of_Birth" required>
		<br> <br> <label for="location">Location:</label>
		 <select id="location" name="Location" required>
			<option value="">-- Select Location --</option>
			<option value="Any Location">Any Location</option>
			<option value="Bangalore">Bangalore</option>
			<option value="Hyderabad">Hyderabad</option>
			<option value="Chennai">Chennai</option>
			<option value="New Delhi">New Delhi</option>
		</select> <br> <br>
		 <label for="document">Identification Document:</label> 
		 <input type="file" id="document" name="Identification_Document" accept=".pdf,.png"	required> <br> <br>
	<center><input type="submit" value="Submit" class="btn" id="bt1">
		 <input type="reset" value="Cancel" class="btn" id="bt"></center>
	</form>

	<div class="loader">
		<!-- Add your loader HTML or spinner here -->
	</div>

</body>
</html>
