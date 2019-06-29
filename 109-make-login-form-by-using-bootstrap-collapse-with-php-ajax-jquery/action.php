<?php  
 //action.php  
 session_start();  
 $connect = mysqli_connect("localhost", "root", "", "testing");  
 if(isset($_POST["username"]))  
 {  
      $username = mysqli_real_escape_string($connect, $_POST["username"]);  
      $password = mysqli_real_escape_string($connect, $_POST["password"]);  
      $query = "  
      SELECT * FROM admin_login  
      WHERE admin_name = '".$username."'  
      AND admin_password = '".$password."'  
      ";  
      $result = mysqli_query($connect, $query);  
      if(mysqli_num_rows($result) > 0)  
      {  
           $_SESSION["username"] = $username;  
           echo 'Yes';  
      }  
      else  
      {  
           echo 'No';  
      }  
 }  
 if(isset($_POST["action"]))  
 {  
      unset($_SESSION["username"]);  
 }  
 ?>  