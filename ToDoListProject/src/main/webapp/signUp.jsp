<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body
{
background-color: gray;
margin:0px;
display:flex;
height: 100vh;
justify-content: center;
align-items: center;
}
input,label
{

width:200px;
font-family: sans-serif;

}
.border
{
border:1px solid white;
border-radius: 4px;
height: 23px;

}

#submitone
{
border:1px solid white;
position:absolute;
top:120px;
right:70px;
width:120px;
height: 30px;
border-radius: 10px;
text-align: center;

}
form
{
background-color:orange;
border:1px solid orange;
padding: 130px;
border-radius: 10px;
box-shadow: 5px 10px 20px;
position: relative;
}
h2
{
position: absolute;
top: 30px;
left:210px;
font-family: sans-serif;
}
#submitone:hover
{

cursor:pointer;
color:white;
background-color:black;
}

#zero
{
position:absolute;
left:431px;
top:137px;
font-size: 19px;

}
#two
{
position:absolute;
left:423px;
top:168px;
font-size: 19px;

}
#three
{
position:absolute;
left:427px;
top:199px;
font-size: 19px;

}
#four
{
position:absolute;
left:427px;
top:229px;
font-size: 19px;

}
#fivee
{
position:absolute;
right:1px;
top:27px;
font-size:19px;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<form action="saveuser" method="post" enctype="multipart/form-data">
	
	<table>
	
	<h2>SignUp Form</h2>
	<tr><td><label>User Id </label></td>  <td><input type="text" name="id"  id="id" class="border" placeholder="Enter the userid" ><br></td><i id="zero" class=" fa-solid fa-regular fa-id-badge"></i> </tr>
	<tr><td><label>User Name </label></td>  <td><input type="text" name="name" class="border" placeholder="Enter the username"><br></td> <i id="two" class="fa-solid fa-signature"></i> </tr>
	<tr><td><label>User Email </label></td>  <td><input type="email" name="email" class="border" placeholder="Enter the useremail"><br></td> <i id="three" class="fa-solid fa-envelope"></i> </tr>
	<tr><td><label>User Contact </label></td>  <td><input type="text" name="contact" class="border" placeholder="Enter the usercontact"><br></td>  <i id="four" class="fa-solid fa-address-book"></tr>
	<tr><td><label>User Password </label></td>  <td><input type="text" name="password" class="border" placeholder="Enter the userpassword"><br></td><i id="fivee" class="fa-solid fa-lock"></i> </tr>
	<tr><td><label>User Image </label></td>  <td><input type="file" name="image"><br></td>  </tr>
	
	</table>
<input type="submit" id="submitone" value="SIGN UP">
	</form>
</body>
</html>