<%-- 
    Document   : Register
    Created on : Mar 4, 2024, 11:46:07 AM
    Author     : FIKKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel ="stylesheet" href ="css/bootstrap.css"/>


        <style>
            body{
                background-image: url(Images/velcrow.jpg);
            }
            .bg-blur{
                background: rgba(0,0,0,0.5)
            }
            input{
                border:none;
                border-bottom:1px solid #fff;
                background: none;
                color: #fff;


            }


        </style>


    </head>



    <body>
        <script src="js/bootstrap.min.js"></script>


    <center>
        <div class="card m-5 p-2 text-light bg-blur" style="width:400px">
            <div class="card-body">

                <form method= "post" action="RegServlet">  
                    <h4 class="card-title">REGISTER</h4>
                    <center>
                        <p>First Name</p>
                        <input name="fname" type ="text"/>
                        <p>Last Name</p>
                        <input name="lname" type ="text"/>
                        <p>Username</p>
                        <input name="usern" type ="text"/>
                        <p>Email</p>
                        <input name="email" type ="text"/>
                        <p>Password</p>
                        <input name="pass" type ="text"/><br>
                        <p>Confirm Password</p>
                        <input name="cpass" type ="text"/><br>

                        <input class="mt-2 btn btn-dark" type=Submit value="Register"/>

                        <a href ="Login.html" class="text-light"> Already have an account? Log In  </a> 
                </form>
                </center>
            </div>
        </div>

    </center>

    <div class="container">



    </div>




</body>
</html>
