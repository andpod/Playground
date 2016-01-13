<%@ page import="com.login.application.I18N" %><%--
  Created by IntelliJ IDEA.
  User: andpod
  Date: 1/3/2016
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- bootstrap CSS -->
    <link href="/pages/libs/js/bootstrap/dist/css/bootstrap.css" rel="stylesheet" media="screen" />


</head>
<body>

<!-- container -->
<div class="container">
    <div class="panel-body" >
        <p class="text-right-margin{" style="padding-top:30px">
        <h1>${login_error}</h1>
        <h2><a href="/pages/index.jsp">${login_page}</a></h2>
        </p>
    </div>
</div>

<!-- /container -->

<!-- jQuery library -->
<script src="libs/js/jquery.js"></script>

<!-- bootstrap JavaScript -->
<script src="libs/js/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="libs/js/bootstrap/docs-assets/js/holder.js"></script>

</body>
</html>
