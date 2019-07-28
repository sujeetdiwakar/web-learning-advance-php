<?php

//function.php

function get_total_all_records($connect)
{
 $statement = $connect->prepare('SELECT * FROM tbl_user');
 $statement->execute();
 return $statement->rowCount();
}

function clean_text($string)
{
 $string = trim($string);
 $string = stripslashes($string);
 $string = htmlspecialchars($string);
 return $string;
}

function convert_string($action, $string)
{
 $output = '';
 $encrypt_method = "AES-256-CBC";
    $secret_key = 'eaiYYkYTysia2lnHiw0N0vx7t7a3kEJVLfbTKoQIx5o=';
    $secret_iv = 'eaiYYkYTysia2lnHiw0N0';
    // hash
    $key = hash('sha256', $secret_key);
 $initialization_vector = substr(hash('sha256', $secret_iv), 0, 16);
 if($string != '')
 {
  if($action == 'encrypt')
  {
   $output = openssl_encrypt($string, $encrypt_method, $key, 0, $initialization_vector);
   $output = base64_encode($output);
  } 
  if($action == 'decrypt') 
  {
   $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $initialization_vector);
  }
 }
 return $output;
}

?>
