<%-- 
    Document   : success
    Created on : Jan 25, 2022, 10:25:03 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
    String em = request.getParameter("email");
    String passw = request.getParameter("password");
    Connection cn = null;
    int status = 0;
    
try {
    Class.forName("com.mysql.jdbc.Driver");    
    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aptech763", "root", "");
    PreparedStatement stm = cn.prepareStatement("select * from user where email=? AND password=?");
  
    stm.setString(1, em);
    stm.setString(2, passw);
    ResultSet et = stm.executeQuery();
    if(et.next()) {
        //session.setAttribute("thename", em);
        session.setAttribute("thename", et.getString("firstname"));
        response.sendRedirect("dashboard.jsp");
        out.println("inserted successfuly");
    }
    else{
        response.sendRedirect("index.jsp");
        System.out.println("something went wrong");
    }
} catch (Exception e) {
    System.out.println(e);
    out.println(e);
}
%>
