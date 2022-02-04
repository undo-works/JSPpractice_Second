<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>リクエストヘッダー情報を一覧表示</title>
</head>
<body>
	<table>
		<tr>
			<th>ヘッダー名</th>
			<th>値</th>
		</tr>	
<%
	//HTTPヘッダーの集合をEnumerationで取得
	Enumeration<String> headers = request.getHeaderNames();

	//Enumerationの要素の数だけ繰り返す
	while(headers.hasMoreElements()){
		//次の要素(HTTPヘッダー名)を取得
		String headerName = (String) headers.nextElement();
		
		//HTTPヘッダーの値を取得
		String headerValue = request.getHeader(headerName);
%>
		<tr>
			<td><%= headerName %></td>
			<td><%= headerValue %></td>
		</tr>
<%
	}
%>		
	</table>
</body>
</html>