<%--
  Created by IntelliJ IDEA.
  User: andpod
  Date: 1/2/2016
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="e" uri="https://www.owasp.org/index.php/OWASP_Java_Encoder_Project" %>

<c:if test="${empty FirstName}">
	<script type="text/javascript">window.location = "/"</script>
</c:if>

<html>
<head>
    <title>Welcome</title>

 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	
    <!-- bootstrap CSS -->
	<link href="/pages/libs/js/bootstrap/dist/css/bootstrap.css" rel="stylesheet" media="screen" />

	<!-- custom CSS -->


</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
               
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<!-- container -->
    <div class="container">  
		<div class="panel-body" >
			<p class="text-right-margin{" style="padding-top:30px">
            <h1>Welcome <e:forHtml value="${role}"/>, <e:forHtml value="${FirstName}"/>  <e:forHtml value="${LastName}"/></h1></p>
		</div>
	</div>
    
    <!-- /container -->





<!-- jQuery library -->
<script src="/pages/libs/js/jquery.js"></script>

<!-- bootstrap JavaScript -->
<script src="/pages/libs/js/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/pages/libs/js/bootstrap/docs-assets/js/holder.js"></script>

</body>
</html>
