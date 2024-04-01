<%@page import="java.util.Base64"%>
<%@page import="dto.JavaBeanUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%JavaBeanUser user=(JavaBeanUser)request.getSession().getAttribute("user");%>
	
	<h2>Welcome :: <%=user.getUsername() %></h2>
	<h2>Email :: <%=user.getUseremail() %></h2>
	<h2>Contact :: <%=user.getUsercontact() %></h2>
	
	
	<%String image=new String(Base64.getEncoder().encode(user.getUserimage())); %>
	<img alt="" src="data:image/jpeg;base64,<%=image %>" width="150" height="200">
</body>
</html>