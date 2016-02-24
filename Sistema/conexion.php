<?php

$con=mysqli_connect("localhost", "root", "root", "escuelapos");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: ".mysqli_connect_error();
  }
  $con->query("set names UTF8");

?>