<?php
include("constant.php");

if($_POST['id'])
{
$id=mysqli_escape_String($_POST['id']);
$newquantity=mysqli_escape_String($_POST['newquantity']);
$sql = "update t_cars set quantity='$newquantity' where id='$id'";
mysqli_query($con, $sql);
}


?>