<?php
if(isset($_POST["limit"], $_POST["start"]))
{
 $connect = mysqli_connect("localhost", "root", "", "testing");
 $query = "SELECT * FROM tbl_posts ORDER BY post_id DESC LIMIT ".$_POST["start"].", ".$_POST["limit"]."";
 $result = mysqli_query($connect, $query);
 while($row = mysqli_fetch_array($result))
 {
  echo '
  <h3>'.$row["post_title"].'</h3>
  <p>'.$row["post_description"].'</p>
  <p class="text-muted" align="right">By - '.$row["post_author"].'</p>
  <hr />
  ';
 }
}

?>
