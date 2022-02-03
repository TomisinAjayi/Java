<%-- 
    Document   : register
    Created on : Jan 19, 2022, 6:32:19 PM
    Author     : HP
--%>

<%@page import="controller.Usercontroller"%>
<jsp:useBean id="tomi" class="model.User"/>
<jsp:setProperty name="tomi" property="*" />

<%
    Usercontroller ob = new Usercontroller();
    ob.addUser(tomi);
%>
<%
    Usercontroller ob1 = new Usercontroller();
    ob.deleteUser(tomi.getId());
%>
<%
    Usercontroller ob2 = new Usercontroller();
    ob.updateUser(tomi);
%>