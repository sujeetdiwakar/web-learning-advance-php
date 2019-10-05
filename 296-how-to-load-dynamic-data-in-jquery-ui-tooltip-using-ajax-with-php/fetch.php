<?php

//fetch.php

include('database_connection.php');

if(isset($_POST["id"]))
{
 $query = "SELECT * FROM tbl_student WHERE student_id = '".$_POST["id"]."'";

 $statement = $connect->prepare($query);

 $statement->execute();

 $result = $statement->fetchAll();

 $output = '';

 foreach($result as $row)
 {
  $output .= '
  <img src="images/'.$row["image"].'" class="img-thumbnail" />
  <h4>Name - '.$row["student_name"].'</h4>
  <h4>Phone No. - '.$row["student_phone"].'</h4>
  ';
 }
 echo $output;
}

?>