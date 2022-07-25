<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>video.js</title>
<link
	href="<c:url value= "${pageContext.request.contextPath}/resources/css/video-js.css"/>"
	type="text/css" rel="stylesheet">
<script src="http://vjs.zencdn.net/c/video.js"></script>

</head>
<body>
	<video controls="controls" class="video-js vjs-default-skin"
		autoplay="autoplay" controls="controls" muted>
		 
		<source
			src="${pageContext.request.contextPath}/resources/video/spy.mp4"
			type="video/mp4" />
		 
	</video>
</body>
</html>

