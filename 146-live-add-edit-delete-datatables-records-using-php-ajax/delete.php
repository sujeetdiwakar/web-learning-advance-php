<?php
$connect = mysqli_connect("localhost", "root", "", "testing1");
if(isset($_POST["id"]))
{
 $query = "DELETE FROM user WHERE id = '".$_POST["id"]."'";
 if(mysqli_query($connect, $query))
 {
  echo 'Data Deleted';
 }
}
?>