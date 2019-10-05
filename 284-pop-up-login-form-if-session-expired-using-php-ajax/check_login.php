<?php

//check_login.php

if(isset($_POST["email"]))
{
 $connect = new PDO("mysql:host=localhost;dbname=testing", "root", "");

 session_start();

 $query = "SELECT * FROM tbl_login WHERE email = '".$_POST['email']."'";

 $statement = $connect->prepare($query);

 $statement->execute();

 $total_row = $statement->rowCount();

 $output = '';

 if($total_row > 0)
 {
  $result = $statement->fetchAll();

  foreach($result as $row)
  {
   if(password_verify($_POST["password"], $row["password"]))
   {
    $_SESSION["name"] = $row["first_name"];
   }
   else
   {
    $output = '<label class="text-danger">Wrong Password</label>';
   }
  }
 }
 else
 {
  $output = '<label class="text-danger">Wrong Email Address</label>';
 }

 echo $output;
}

?>


