<%--
  Created by IntelliJ IDEA.
  User: KS133
  Date: 4/5/16
  Time: 9:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Speed test</title>

    <link rel="stylesheet" href="http://localhost:8080/testDemo/css/materialize.min.css">
    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://localhost:8080/testDemo/css/custom.css" type="text/css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="<%=request.contextPath %>/js/materialize.min.js"></script>
    <script src="<%=request.contextPath %>/js/jquery.countdown.js"></script>
    <script src="<%=request.contextPath %>/js/jquery.countdownTimer.js"></script>
    <script src="<%=request.contextPath %>/js/custom.js"></script>

</head>
<body>
    <g:render template="/page/headerDetails"/>
    <g:render template="/page/testQuestion"/>
    <g:render template="/page/footerDetails"/>
</body>
</html>