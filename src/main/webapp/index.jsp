<!DOCTYPE html>
<%@page language="java"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Web App</title>


    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    
    
    
<!--Navigation bar here we go boys !!!-->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">CI/CD</a>
        </div>
        <div class="navbar-collapse collapse">
                <% 
       if (session.getAttribute("username")==null){ %>
    <%@include file="/logindex.html"%>
                
            <% }else { %>
          <form class="navbar-form navbar-right" action="Logout" method="get" role="form">
            <p class="text-primary">Welcome ${username}</p>
            <input type="submit" class="btn btn-success" value="logout">
          </form>
      <% }
    %>
        </div><!--/.navbar-collapse -->
    </div>
</div>
  
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>CI/CD</h1>
        <p>Welcome to my devOps' topic about continuous integration and continuous delivery. </p>
        <p><a class="btn btn-primary btn-lg" role="button">Learn more &raquo;</a></p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>Continuous Integration</h2>
            <p><strong>Continuous Integration (CI)</strong> is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early.
 </p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Continuous Delivery</h2>
            <p><strong>Continuous delivery (CD or CDE)</strong> is a software engineering approach in which teams produce software in short cycles, ensuring that the software can be reliably released at any time and, when releasing the software, doing so manually. It aims at building, testing, and releasing software with greater speed and frequency. </p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Continuous Deployment</h2>
            <p><strong>Continuous deployment (CD)</strong> is a software engineering approach in which software functionalities are delivered frequently through automated deployments. CD contrasts with continuous delivery, a similar approach in which software functionalities are also frequently delivered and deemed to be potentially capable of being deployed but are actually not deployed.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
    </div>

    <hr>

    <footer>
        <p>&copy; ITGStore 2019</p>
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
</body>
</html>
