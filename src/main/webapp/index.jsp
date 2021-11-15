<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GROUBEAR</title>
</head>
<body>
	<c:if test="${empty sessionScope.loginUser.empNO}">
		<jsp:forward page="WEB-INF/views/main.jsp" />
	</c:if>
	
	<c:if test="${!empty sessionScope.loginUser.empNO}">
		<jsp:forward page="WEB-INF/views/common/menubar.jsp" />
	</c:if>

</body>
</html>