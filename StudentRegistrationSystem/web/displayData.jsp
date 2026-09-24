<%-- 
    Document   : displayData
    Created on : Sep 24, 2026, 12:14:54 PM
    Author     : shafi
--%>
<%@ page import="java.sql.*" %>
<%@ include file="WEB-INF/dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <title>Student Registration</title>
</head>
<body>
<h2>Student Registration Information</h2>
<table border="1">
<tr>
 <th>Student Name</th>
 <th>Course Name</th>
 <th>Semester</th>
 <th>Registration Date</th>
</tr>
<%
String sql = "SELECT s.student_name, c.course_name, c.semester, r.registration_date " +  "FROM registration r " +
 "INNER JOIN student s ON r.student_id = s.student_id " +
 "INNER JOIN course c ON r.course_id = c.course_id " +
 "ORDER BY s.student_name";
PreparedStatement ps = null;
ResultSet rs = null;
if (conn != null) {
 try {
 ps = conn.prepareStatement(sql);
 rs = ps.executeQuery();
 while (rs.next()) {
%>
<tr>
 <td><%= rs.getString("student_name") %></td>
 <td><%= rs.getString("course_name") %></td>
 <td><%= rs.getInt("semester") %></td>
 <td><%= rs.getDate("registration_date") %></td> 
 
 </tr>
<%
 }
 } catch (SQLException e) {
 out.println("<p>Query error: " + e.getMessage() + "</p>");
 } finally {
 try {
 if (rs != null) {
 rs.close();
 }
 if (ps != null) {
 ps.close();
 }
 if (conn != null) {
 conn.close();
 }
 } catch (SQLException e) {
 // Ignore close error
 }
 }
}
%>
</table>
</body>
</html> 