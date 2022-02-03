<%-- 
    Document   : dashboard
    Created on : Jan 20, 2022, 12:01:57 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/dashboard.css">
    </head>
    <body>
        
        <div class="wrapper">
            <nav id="sidebar" >
                <div class="sidebar-header">
                </div>
                <ul class="list-unstyled components">
                    <li>
                        <a href="#">Dashboard</a>
                    </li>
                    <li>
                        <div class="dropdown show">
                            <a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="display:flex;">
                              Teachers
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <a class="dropdown-item" href="#">Link 1</a>
                              <a class="dropdown-item" href="#">Link 2</a>
                              <a class="dropdown-item" href="#">Link 3</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#">Signout</a>
                    </li>
                </ul>
            </nav>
            
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="navbar-btn">
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-justify"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item dropdown">
                                    <div class="dropdown show">
                                        <a class="btn dropdown-toggle" href="dashboard.jsp" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:white;">
                                          Admin
                                        </a>

                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                          <a class="dropdown-item" href="#">Settings</a>
                                          <a class="dropdown-item" href="#">Signout</a>
                                        </div>
                                      </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <div class="name">Welcome <span id="userName"> <%= session.getAttribute("thename")%> </span></div>
                    <div class="container" id="course">
                        <div class="row">
                            <div class="col-md-4" id="first">
                                <h4>2</h4>
                                <p>Course and Bundles</p>
                            </div>
                            <div class="col-md-4" id="second">
                                <h4>2</h4>
                                <p>Students</p>
                            </div>
                            <div class="col-md-4" id="third">
                                <h4>1</h4>
                                <p>Course and Bundles</p>
                            </div>
                        </div> 
                    </div>
                    <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th scope="col">FirstName</th>
                            <th scope="col">LastName</th>
                            <th scope="col">Email</th>
                            <th scope="col">Password</th>
                            <th scope="col">Action</th>
                          </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                    <div id="updateTable"><a href="">click me</a></div>
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
        
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="js/index.js"></script>
    </body>
</html>
