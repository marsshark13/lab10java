<%-- 
    Document   : insertOrder
    Created on : Sep 24, 2026, 2:12:38 PM
    Author     : shafi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/dbConnection.jsp" %>
<%
    
   int customerID = Integer.parseInt(request.getParameter("customer_id"));
   int foodID = Integer.parseInt(request.getParameter("food_id"));
   int quantity = Integer.parseInt(request.getParameter("quantity"));
   
   conn.setAutoCommit(false);
   

String sql = "INSERT INTO FOOD_ORDER (CUSTOMER_ID, FOOD_ID, QUANTITY, ORDER_DATE) VALUES (?,?,?, CURRENT_TIMESTAMP)";

PreparedStatement ps = conn.prepareStatement(sql);

ps.setInt(1, customerID);
ps.setInt(2,  foodID);
ps.setInt(3, quantity);

int result = ps.executeUpdate();

if (result>0){
    out.println("order inserted successfully");
}else{
     out.println("order insertion failed");
             }
    

%>

