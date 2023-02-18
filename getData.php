<?php
include("constant.php");

$supplier = $_POST['supplier'];
$seller = $_POST['seller'];
$steering = $_POST['steering'];
$model = $_POST['model'];
$sfx = $_POST['sfx'];
$variant = $_POST['variant'];
$color = $_POST['color'];

$sql = "SELECT cars_id, date, quantity FROM t_cars WHERE supplier_id = $supplier && seller_id = $seller &&
 steering_id = $steering && car_model = $model && car_sfx = $sfx && car_variant = $variant 
 && car_color = $color ORDER BY MONTH(date)";

$result = mysqli_query($con, $sql);
?>

<div class="container text-center m-3 p-3">


<table class="table table-dark">
<h3 class="p-5">Sales Quantity</h3>
  <thead>
    <tr>
   <?php foreach($result as $row){ ?>
      <th scope="col"><?php      $dateValue = $row['date'];
      $time=strtotime($dateValue);
    echo  $month=date("F",$time);
    echo " ";
    echo  $year=date("Y",$time);
 ?></th>
   <?php } ?>
    </tr>
  </thead>

  <tbody>
    <tr>
   <?php  foreach($result as $row){ ?>
      <td class="edit_td" id="<?php echo $row['cars_id']?>">
      <span id="first_<?php echo $row['cars_id']; ?>" class="text"><?php echo $row['quantity']; ?></span>
        <input type= "text" value="<?php echo  $row['quantity']; ?>" class="editbox" id="first_input_<?php echo $row['cars_id']; ?>">
    </td>
<?php } ?>
    </tr>
  </tbody>
</table>

<?php 
// foreach($result as $row){
// echo $row['date'];
// echo "  ";
// }

// foreach($result as $row){
//     echo $row['quantity'];
//     echo "  ";  
//     }
?>
</div>



<script type="text/javascript">

$(document).ready(function()
{
  $(".editbox").hide();

$(".edit_td").click(function()
{
  console.log("hello");
var ID=$(this).attr('id');
console.log(ID);
$("#first_"+ID).hide();
$("#first_input_"+ID).show();
}).change(function(){

  var ID=$(this).attr('id');
  var first = $("#first_input_"+ID).val();
  console.log(first); 
  var dataString = 'id=' + ID + '&newquantity=' + first;
  if(first.length>0){
    $.ajax({
      type: "POST",
      url: 'table_edit_ajax.php',
      data: dataString,
      cache: false,
      success: function(html){
        $("#first_"+ID).html(first);
      }
    });
  }
  else{
    alert('Enter Something.');
  }
});

// Edit input box click action
$(".editbox").mouseup(function()
{
return false
});

// Outside click action
$(document).mouseup(function()
{
$(".editbox").hide();
$(".text").show();
});

});


  </script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
