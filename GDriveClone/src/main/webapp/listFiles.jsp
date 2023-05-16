<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Lists</title>
</head>
<body>
	<a href ="<%=request.getContextPath()%>/FileController">Home Folder</a>
	<%
		String path=(String)request.getAttribute("path");
		ArrayList<String> folders = (ArrayList<String>) request.getAttribute("folders");
		ArrayList<String> files = (ArrayList<String>) request.getAttribute("files");
		
	%>
	<h1>List of folders</h1>
	<h2>Current folder - <%= path %></h2>
	<c:forEach items ="${folders}" var ="folder">
				<form action="<%= request.getContextPath()%>/FileController" method="get">
					<input type="hidden" name="path" value="${path}/${folder}"/>
					<input type = "submit" value="${folder}"/>
				</form>
				</br>
	</c:forEach>
	
	<h1>=================================================</h1>
	<h1>List of files</h1>
	<c:forEach items = "${files}" var="file">
		<a href ="">${file}</a>
	</c:forEach>
</body>
</html>