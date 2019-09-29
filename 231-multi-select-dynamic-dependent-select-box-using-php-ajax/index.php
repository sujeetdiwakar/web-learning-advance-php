<?php

//index.php

include('database_connection.php');

$query = "
SELECT * FROM first_level_category 
ORDER BY first_level_category_name ASC
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

?>
<!DOCTYPE html>
<html>
 <head>
  <title>Bootstrap Multi Select Dynamic Dependent Select box using PHP Ajax </title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
 </head>
 <body>
  <br />
  <div class="container">
   <h2 align="center">Multi Select Dynamic Dependent Select box using PHP Ajax</h2>
   <br /><br />
   <div style="width: 500px; margin:0 auto">
    <div class="form-group">
     <label>First Level Category</label><br />
     <select id="first_level" name="first_level[]" multiple class="form-control">
     <?php
     foreach($result as $row)
     {
      echo '<option value="'.$row["first_level_category_id"].'">'.$row["first_level_category_name"].'</option>';
     }
     ?>
     </select>
    </div>
    <div class="form-group">
     <label>Second Level Category</label><br />
     <select id="second_level" name="second_level[]" multiple class="form-control">

     </select>
    </div>
    <div class="form-group">
     <label>Third Level Category</label><br />
     <select id="third_level" name="third_level[]" multiple class="form-control">

     </select>
    </div>
   </div>
  </div>
 </body>
</html>
<script>
$(document).ready(function(){

 $('#first_level').multiselect({
  nonSelectedText:'Select First Level Category',
  buttonWidth:'400px',
  onChange:function(option, checked){
   $('#second_level').html('');
   $('#second_level').multiselect('rebuild');
   $('#third_level').html('');
   $('#third_level').multiselect('rebuild');
   var selected = this.$select.val();
   if(selected.length > 0)
   {
    $.ajax({
     url:"fetch_second_level_category.php",
     method:"POST",
     data:{selected:selected},
     success:function(data)
     {
      $('#second_level').html(data);
      $('#second_level').multiselect('rebuild');
     }
    })
   }
  }
 });

 $('#second_level').multiselect({
  nonSelectedText: 'Select Second Level Category',
  buttonWidth:'400px',
  onChange:function(option, checked)
  {
   $('#third_level').html('');
   $('#third_level').multiselect('rebuild');
   var selected = this.$select.val();
   if(selected.length > 0)
   {
    $.ajax({
     url:"fetch_third_level_category.php",
     method:"POST",
     data:{selected:selected},
     success:function(data)
     {
      $('#third_level').html(data);
      $('#third_level').multiselect('rebuild');
     }
    });
   }
  }
 });

 $('#third_level').multiselect({
  nonSelectedText: 'Select Third Level Category',
  buttonWidth:'400px'
 });

});
</script>

