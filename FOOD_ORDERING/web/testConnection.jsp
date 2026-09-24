<%@include file="WEB-INF/dbConnection.jsp" %>

<%
    if (conn != null){
        out.println("Database connected!");
        
    }
    %>