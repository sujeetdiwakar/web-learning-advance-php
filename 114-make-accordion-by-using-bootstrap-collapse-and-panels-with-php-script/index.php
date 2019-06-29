<?php   
 $connect = mysqli_connect("localhost", "root", "", "testing");  
 $query = "SELECT * FROM tbl_posts ORDER BY post_title ASC";  
 $result = mysqli_query($connect, $query);  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Make accordion by using Bootstrap Collapse and Panels with PHP Script</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
      </head>  
      <body>  
           <br />  
           <div class="container" style="width:700px;">  
                <h3 align="center">Make accordion by using Bootstrap Collapse and Panels with PHP Script</h3><br />  
                <br />  
                <div class="panel-group" id="posts">  
                <?php  
                while($row = mysqli_fetch_array($result))  
                {  
                ?>  
                     <div class="panel panel-default">  
                          <div class="panel-heading">  
                               <h4 class="panel-title">  
                                    <a href="#<?php echo $row["post_id"]; ?>" data-toggle="collapse" data-parent="#posts"><?php echo $row["post_title"]; ?></a>  
                               </h4>  
                          </div>  
                          <div id="<?php echo $row["post_id"]; ?>" class="panel-collapse collapse">  
                               <div class="panel-body">  
                               <?php echo $row["post_desc"]; ?>  
                               </div>  
                          </div>  
                     </div>  
                <?php  
                }  
                ?>  
                </div>  
           </div>  
           <br />  
      </body>  
 </html>  