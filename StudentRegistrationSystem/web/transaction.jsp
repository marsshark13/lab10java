<%@ page import="java.sql.*" %> 
<%@ include file="WEB-INF/dbconnection.jsp" %> 
 
<% 
PreparedStatement ps1 = null; 
PreparedStatement ps2 = null; 
 
if (conn != null) { 
 
    try { 
        conn.setAutoCommit(false); 
 
        ps1 = conn.prepareStatement( 
            "INSERT INTO student(student_name, email) VALUES (?, ?)"); 
 
        ps2 = conn.prepareStatement( 
            "INSERT INTO course(course_name, semester) VALUES (?, ?)"); 
 
        ps1.setString(1, "Ahmad"); 
        ps1.setString(2, "ahmad@example.com"); 
        ps1.executeUpdate(); 
 
        ps2.setString(1, "Web Programming"); 
        ps2.setInt(2, 4); 
        ps2.executeUpdate(); 
 
        conn.commit(); 
 
        out.println("<h3>Transaction successful!</h3>"); 
 
    } catch (SQLException e) { 
 
        try { 
            conn.rollback(); 
        } catch (SQLException rollbackError) { 
            // Ignore rollback error 
        } 
 
        out.println("<h3>Transaction failed and was rolled back.</h3>"); 
        out.println("<p>" + e.getMessage() + "</p>"); 
 
    } finally { 
 
        try { 
            if (ps1 != null) { 
                ps1.close(); 
            } 
 
            if (ps2 != null) { 
                ps2.close(); 
            } 
 
            if (conn != null) { 
                conn.setAutoCommit(true); 
                conn.close(); 
            } 
 
        } catch (SQLException e) { 
            // Ignore close error 
        } 
    } 
} 
%> 
