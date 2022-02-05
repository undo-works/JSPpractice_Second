<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Issue_Cookie.jsp</title>
</head>
<body>
<%
	//make Cookie object
	Cookie ck = new Cookie("Cookie_name_01", "Cookie_value_01");

	//Valid time since it was issued.Seconds.
	//If -1 is specified, it is valid until the browser is closed.
	ck.setMaxAge(3600);
	
	//Cookie pass.  Cannot be issued unless it matches the pass of the URL after the domain.
	ck.setPath("/");
	
	//Domain to which the cookie is issued.
	ck.setDomain("127.0.0.1");
	
	//Flag to determine whether to allow issuance only to HTTPS
	ck.setSecure(false);
	
	//Output Cookie.
	response.addCookie(ck);
%>
	<p>クッキーを出力します</p>
</body>
</html>