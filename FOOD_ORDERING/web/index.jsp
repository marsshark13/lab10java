<%-- 
    Document   : index
    Created on : Sep 24, 2026, 1:40:16 PM
    Author     : shafi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>STAFF LOGIN</h2>
        
        <form action="loginProcess.jsp" method="post">
            
            Username:
            <input type="text" name="username">
            
            <br><br>
            
            Password:
            
            <input type="password" name="password">
            
            <br><br>
            
            <input type="submit" value="login">
   
            
          
        </form>
    </body>
</html>
