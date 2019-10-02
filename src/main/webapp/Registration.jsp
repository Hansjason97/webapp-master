<%-- 
    Document   : Registration
    Created on : 20 sept. 2019, 16:40:35
    Author     : hansa
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
        <title>Sign Up</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    </head>
    <body>

        <nav class="navbar navbar-dark bg-dark" role="navigation">
            <div class="container">
  <a class="navbar-brand" href="/WebApp">CI/CD</a>
            </div>
</nav>

        <div class="container">
           <br> <h1>Sign up</h1>
           <div class="alert alert-primary" role="alert">
  Fill the form and press sign up to successfully register.
</div>
        <form action="Registration" method="post">
            <table>
                <tr><td>Username :</td> <td><input type="text" name="username" required="" class="form-control"></td></tr><br>
                <tr><td>Password : </td><td><input type="password" name="password" required="" class="form-control"></td></tr><br>
                <tr><td></td><td><input type="submit" value="Sign up" class="btn btn-success"></td></tr>
       </table>
         </form>
           <br> <a href="/WebApp">Back</a>
        
        
        <footer>
        <p>&copy; ITGStore 2019</p>
    </footer>
       </div> 
        
        
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!Official Themes
Take Bootstrap 4 to the next level with official premium themes—toolkits built on Bootstrap with new components and plugins, docs, and build tools.

Bootstrap Themes-->
    </body>
</html>
