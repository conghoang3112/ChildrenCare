<%-- 
    Document   : newjsp
    Created on : Nov 29, 2022, 3:51:36 PM
    Author     : congh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-group">
            <form action="login2" method="POST">
                
           
                            <input name="user" class="form-control" id="user" placeholder="User name">
                        </div>
                        <div class="form-group">
                            <input name="pass" class="form-control" id="pass" placeholder="Password">
                        </div>
                        <div class="forgot">
                            <a href="reset.html">Forgot password?</a>
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                         </form>
                        </div>
    </body>
</html>
