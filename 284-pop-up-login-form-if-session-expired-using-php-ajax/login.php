<?php  

//login.php
session_start();
if(isset($_SESSION["name"]))
{
 header('location:index.php');
}

?>  
<!DOCTYPE html>  
<html>  
    <head>  
  <title>Login Modal Popup After Session Timeout in PHP using Ajax</title> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style> 
  body
  {
   background-color:#f1f1f1;
  }
        #box  
        {  
            width:500px;
   background-color:#ffffff;
            margin:0 auto;  
            padding:16px;  
            text-align:center;  
            margin-top:50px;
   border:1px solid #ccc;
   border-radius:5px;
        }  
        </style>  
 </head>  
 <body>  
  <div class="container">
   <br />
   <br />
   <h1 align="center">Login Modal Popup After Session Timeout in PHP using Ajax</h1>
   <div id="box">
    <h2>Login</h2>
    <br />
    <span id="error_message"></span>
    <form method="post" id="login_form">
     <input type="text" name="email" placeholder="Enter Email" class="form-control" required /><br />
     <input type="password" name="password" placeholder="Enter Password" class="form-control" required /><br />
     <input type="submit" name="submit" id="submit" class="btn btn-info" value="Login" />
    </form>
    <br /><br />  
   </div>
  </div>
    </body>  
</html>

<script>
$(document).ready(function(){
 $('#login_form').on('submit', function(event){
  event.preventDefault();
  $.ajax({
   url:"check_login.php",
   method:"POST",
   data:$(this).serialize(),
   success:function(data){
    if(data != '')
    {
     $('#error_message').html(data);
    }
    else
    {
     window.location = 'index.php';
    }
   }
  })
 });
});
</script>