 <?php   
 session_start();  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Make Login Form by Using Bootstrap Collapse with PHP Ajax Jquery</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" /> 
      </head>  
      <body>  
           <br />  
           <div class="container" style="width:700px;">  
                <h3 align="center">Make Login Form by Using Bootstrap Collapse with PHP Ajax Jquery</h3><br />  
                <br />  
                <br />  
                <br />  
                <br />  
                <br />  
                <?php  
                if(isset($_SESSION["username"]))  
                {  
                ?>  
                <div align="center">  
                     <h1>Welcome - <?php echo $_SESSION['username']; ?></h1><br />  
                     <a href="#" id="logout">Logout</a>  
                </div>  
                <?php  
                }  
                else  
                {  
                ?>  
                <div align="center">  
                     <button type="button" name="login" id="login" class="btn btn-success" data-toggle="collapse" data-target="#login_collapse">Login</button>  
                     <div id="login_collapse" class="collapse col-md-12" style="border:1px solid #ccc; background-color:#f1f1f1; margin-top:16px;">  
                          <h3 align="center">Login</h3>  
                          <label>Username</label>  
                          <input type="text" name="username" id="username" class="form-control" />  
                          <br />  
                          <label>Password</label>  
                          <input type="password" name="password" id="password" class="form-control" />  
                          <br />  
                          <button type="button" name="login_button" id="login_button" class="btn btn-warning">Login</button>  
                          <br /><br />  
                     </div>  
                </div>  
                <?php  
                }  
                ?>  
           </div>  
           <br />  
      </body>  
 </html>  
 <script>  
 $(document).ready(function(){  
      $('#login_button').click(function(){  
           var username = $('#username').val();  
           var password = $('#password').val();  
           if(username != '' && password != '')  
           {  
                $.ajax({  
                     url:"action.php",  
                     method:"POST",  
                     data:{username:username, password:password},  
                     success:function(data){  
                          if(data == 'No')  
                          {  
                               alert("Wrong Data");  
                          }  
                          else  
                          {  
                               location.reload();  
                          }  
                     }  
                });  
           }  
           else  
           {  
                alert("Both Fields are required");  
           }  
      });  
      $('#logout').click(function(){  
           var action = "logout";  
           $.ajax({  
                url:"action.php",  
                method:"POST",  
                data:{action:action},  
                success:function()  
                {  
                     location.reload();  
                }  
           });  
      });  
 });  
 </script>  
