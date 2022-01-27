<%-- 
    Document   : index
    Created on : Jan 19, 2022, 6:33:08 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
       <link rel="stylesheet" href="css/index.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div  class="mainContent">
            <form action="process.jsp" method="post">
                <h1>oneShop</h1>
                <p class="intro">Easy & fast product Management</p>
                <p style="text-align:center;">Sign up for free</p>
                <p>
                    <label>Firstname</label> <br>
                    <input type="text" class="form-control" name="firstname">
                </p>
                <p>
                    <label>Lastname</label> <br>
                    <input type="text" class="form-control" name="lastname">
                </p>
                <p>
                    <label>E-mail</label> <br>
                    <input type="email" class="form-control" name="email">
                </p>
                <p>
                    <label>Password</label> <br>
                    <input type="password" class="form-control" name="password">
                </p>
                <p>
                    <input type="submit" value="Sign In" class="form-control signIn-btn">
                </p>                
            </form>
        </div>
        <jsp:include page="footer.jsp" />
       
    
    </body>
</html>
