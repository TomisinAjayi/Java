<%-- 
    Document   : login
    Created on : Jan 20, 2022, 9:34:34 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
       <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="mainContent">
            <h1>oneShop</h1>
            <p class="intro">Easy & fast product Management</p>
            <p>Welcome back</p>
            <form action="process_login.jsp" method="post">
                <p>
                    <label style="margin-left:-202px;">E-mail</label> <br>
                    <input type="email" name="email" class="">
                </p>
                <p>
                    <label style="margin-left:-180px;">Password</label> <br>
                    <input type="password" name="password" class="" placeholder="">
                    <svg class="viewPassword" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30" viewBox="0 0 172 172" style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#56abe7"><path d="M86,28.66667c-51.13157,0 -84.15967,52.81077 -84.75703,53.77239c-0.80406,1.01283 -1.2421,2.26775 -1.24297,3.56094c0.00102,1.1094 0.32388,2.19467 0.92943,3.12422c0.00743,0.01122 0.01489,0.02242 0.0224,0.03359c0.09858,0.20342 27.82281,54.17552 85.04818,54.17552c56.98258,0 84.666,-53.44188 85.00339,-54.09714c0.02282,-0.03707 0.04522,-0.0744 0.06719,-0.11198c0.60555,-0.92955 0.92841,-2.01482 0.92942,-3.12422c-0.0002,-1.28802 -0.43411,-2.53845 -1.23177,-3.54974c-0.00373,-0.00374 -0.00746,-0.00747 -0.0112,-0.0112c-0.59736,-0.96163 -33.62546,-53.77239 -84.75703,-53.77239zM86,45.86667c22.16507,0 40.13333,17.96827 40.13333,40.13333c0,22.16507 -17.96827,40.13333 -40.13333,40.13333c-22.16507,0 -40.13333,-17.96827 -40.13333,-40.13333c0,-22.16507 17.96827,-40.13333 40.13333,-40.13333zM86,68.8c-9.4993,0 -17.2,7.7007 -17.2,17.2c0,9.4993 7.7007,17.2 17.2,17.2c9.4993,0 17.2,-7.7007 17.2,-17.2c0,-9.4993 -7.7007,-17.2 -17.2,-17.2z"></path></g></g></svg>
                </p>
                <p>
                    <input type="submit" value="Sign In" class="signIn-btn">
                </p>
                <p><a href="" class="forgot">Forgot Password</a></p>
                
                <p class="others"> 
                    <span><a href="">Terms of use</a></span> | 
                    <span><a href="">privacy</a></span>
                </p>
                
            </form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
