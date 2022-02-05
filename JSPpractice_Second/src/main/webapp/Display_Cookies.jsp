<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display_Cookies.jsp</title>
</head>
<body>
	<p>List of cookie that can be obtained.</p>
	<table>
<%
	//Get Cookie object. Get All Cookies that meet the condition. 
	Cookie[] cks = request.getCookies();
	if(cks != null && cks.length > 0){
		for(Cookie ck : cks){
%>		
		<tr>
			<th>setting name</th>
			<th>value</th>
		</tr>
		<tr>
			<td>Cookie value</td>
			<td><%= ck.getValue() %></td>
		</tr>
		<tr>
			<td>Issuing domain</td>
			<td><%= ck.getDomain() %></td>
		</tr>
		<tr>
			<td>Issuing path</td>
			<td><%= ck.getPath() %></td>
		</tr>
		<tr>
			<td>Validity period(second)</td>
			<td><%= ck.getMaxAge() %></td>
		</tr>
		<tr>
			<td>Secure</td>
			<td><%= ck.getSecure() %></td>
		</tr>
<%
		}
	}	
%>			
				
	</table>
</body>
</html>