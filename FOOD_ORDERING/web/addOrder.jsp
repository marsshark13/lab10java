<%-- 
    Document   : addOrder.jsp
    Created on : Sep 24, 2026, 2:03:53 PM
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
        <h1>Add Order</h1>
        
        <form action="insertOrder.jsp" method="post">
           Customer ID:
           <input type="number" name="customer_id">
           
           <br><br>
           
           Food ID:
           <input type="number" name="food_id">
           
           <br><br>
           
           Quantity:
           <input type="number" name="quantity">
           
           <br><br>
           
           <input type="submit" value="Add Order">
           
           
        </form>
        
    </body>
</html>
