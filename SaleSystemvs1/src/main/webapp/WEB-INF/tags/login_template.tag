<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>${title }</title>
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath }/acset/account/login/reset.min.css">


</head>

<body>
<jsp:invoke fragment="content"></jsp:invoke>
<link rel="stylesheet" href="${pageContext.request.contextPath }/acset/account/login/style.css">

<script src="${pageContext.request.contextPath }/acset/account/login/TweenMax.min.js"></script>
<script src="${pageContext.request.contextPath }/acset/account/login/MorphSVGPlugin.min.js"></script>

<script src="${pageContext.request.contextPath }/acset/account/login/script.js"></script>
</body>

</html>
