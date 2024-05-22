<%-- 
    Document   : logIn
    Created on : Mar 1, 2024, 12:54:44 PM
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
        <link rel="icon" type="image/x-icon" href="Images/favicon.ico">

        <style>
            body{
                background-image: url(Images/image.jpg);
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
                <center>
                    <form method= "post" action="AuthServlet">  
                        <h4 class="card-title">Log In</h4>
                        <p>Username:</p>
                        <input type="text" name="user">

                        <p>Password:</p>
                        <input type="text" name="pass"><br/>
                        <input class="mt-2 btn btn-dark" type=Submit value="Log in"/>
                        <a href ="Register.html"> Sign Up  </a> 
                    </form>       
                </center> 

            </div>
        </div>

    </center>



</body>
</html>
