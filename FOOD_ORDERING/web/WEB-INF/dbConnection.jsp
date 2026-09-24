<%-- 
    Document   : dbConnection
    Created on : Sep 24, 2026, 1:22:00 PM
    Author     : shafi
--%>

<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    
try {

    Class.forName("org.apache.derby.jdbc.ClientDriver");

    conn = DriverManager.getConnection(
        "jdbc:derby://localhost:1527/food_ordering",
        "app",
        "app"
    );
}
    catch(Exception e) {
            
     out.println("Database Connection Error: " + e.getMessage());
}


    %>
    