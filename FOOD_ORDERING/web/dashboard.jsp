<%-- 
    Document   : dashboard.jsp
    Created on : Sep 24, 2026, 1:58:58 PM
    Author     : shafi
--%>
<%
    if (session.getAttribute("username") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    
   %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Staff Dashboard</h2>
        
        <p>
        Welcome, <%= session.getAttribute("username") %>
        </p>
        
        <a href="addOrder.jsp">Add order</a>
        <br><br>
        <a href="displayOrders.jsp">View Orders</a>
        
                
    </body>
</html>
