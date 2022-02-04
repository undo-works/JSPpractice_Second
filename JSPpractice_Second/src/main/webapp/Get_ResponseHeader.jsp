<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get_ResponseHeader.jsp</title>
</head>
<body>
	<table>
		<tr>
			<th>header name here</th>
			<th>header value here</th>
		</tr>
		<%
			//Get a set of HTTP headers in Collection
			Collection<String> headers = response.getHeaderNames();
			
			Iterator<String> keys = headers.iterator();
			
			//Repeat for the number of elements.
			while(keys.hasNext()){
				//Get next element(HTTP header name)
				String headerName = (String)keys.next();
				
				//Get HTTP header's value.
				String headerValue = response.getHeader(headerName);
		%>
		<tr>
			<td><%= headerName %></td>
			<td><%= headerValue %></td>
		</tr>
		<% } %>	
	</table>
</body>
</html>