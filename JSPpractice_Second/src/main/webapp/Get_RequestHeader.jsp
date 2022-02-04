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
		String name = (String) headers.nextElement();
		
		//HTTPヘッダーの値を取得
		String value = request.getHeader(name);
%>
		<tr>
			<td><%= name %></td>
			<td><%= value %></td>
		</tr>
<%
	}
%>		
	</table>
	

</body>
</html>