<%-- 
    Document   : register
    Created on : Jan 19, 2022, 6:32:19 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String em = request.getParameter("email");
    String passw = request.getParameter("password");
    Connection cn = null;
    int status = 0;
    
try {
    Class.forName("com.mysql.jdbc.Driver");  
    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aptech763", "root", "");
    PreparedStatement stm = cn.prepareStatement("insert into user(firstname,lastname,email,password) values (?,?,?,?)");
  
    stm.setString(1, fname);
    stm.setString(2, lname);
    stm.setString(3, em);
    stm.setString(4, passw);
    status = stm.executeUpdate();
    if(status > 0) {
        response.sendRedirect("login.jsp");
//        System.out.println("Connected");
        out.println("inserted successfuly");
    }
    else{
     System.out.println("something went wrong");
    }
} catch (Exception e) {
    System.out.println(e);
    out.println(e);
}
%>

