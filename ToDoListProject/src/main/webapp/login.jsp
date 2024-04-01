<%@page import="java.awt.geom.Path2D"%>
<%@page import="dto.JavaBeanUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
body
{
background-color:olive;
margin:0px;
display:flex;
height: 100vh;
justify-content: center;
align-items: center;
}
input,label
{
border:1px  white;
width:200px;
height:25px;
font-family: sans-serif;
border-radius: 4px;

}
form
{
background-color:silver;
border:0px  orange;
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
#submitone
{
border:1px solid white;
position:absolute;
top:220px;
left:230px;
width:120px;
height: 30px;
border-radius: 10px;
text-align: center;

}
#three
{
position:absolute;
right:135px;
top:138px;
font-size: 19px;

}
#fivee
{
position:absolute;
right:135px;
top:168px;
font-size:19px;
}
#submitone:hover
{

cursor:pointer;
color:white;
background-color:black;
}

</style>
</head>
<body>
	<form action="userloginn" method="post">
	<h2>Login Form</h2>
	<table>
	<tr> <td><label>Email </label></td><td><input type="text" name="email" placeholder="User email" ></td> <i id="three" class="fa-solid fa-envelope"></i> </tr>
	<tr><td><label>Password </label></td> <td><input type="text" name="password" placeholder=" User password"></td><i id="fivee" class="fa-solid fa-lock"></i> </tr>
	</table>
	<input type="submit" id="submitone">
	</form>
</body>
</html>