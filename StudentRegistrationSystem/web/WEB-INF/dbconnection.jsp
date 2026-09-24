<%-- 
    Document   : dbconnection
    Created on : Sep 24, 2026, 12:07:17 PM
    Author     : shafi
--%>

<%@ page import="java.sql.*" %>
<%
Connection conn = null;
try {
 Class.forName("org.apache.derby.jdbc.ClientDriver");
 conn = DriverManager.getConnection(
 "jdbc:derby://localhost:1527/student_registration", "app", "app");
} catch (Exception e) {
 out.println("<p>Database connection error: " + e.getMessage() + "</p>"); }
%> 


