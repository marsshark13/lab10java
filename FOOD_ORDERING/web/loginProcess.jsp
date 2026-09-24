<%-- 
    Document   : loginProcess
    Created on : Sep 24, 2026, 1:47:41 PM
    Author     : shafi
--%>
<%@include file="WEB-INF/dbConnection.jsp" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
String sql = "SELECT * FROM USERS WHERE USERNAME = ? AND PASSWORD = ?";
PreparedStatement ps = conn.prepareStatement(sql);

ps.setString(1, username);
ps.setString(2, password);

ResultSet rs = ps.executeQuery();

if (rs.next()){
    
session.setAttribute("username", username);
response.sendRedirect("dashboard.jsp");

}else{
    
out.println("Invalid username or password");

}

    


    %>