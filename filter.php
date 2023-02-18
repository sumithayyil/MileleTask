<?php
include('constant.php');

    $supplier = $_POST['supplier'];
    $seller = $_POST['seller'];
    $steering = $_POST['steering'];

   $sql3 = "SELECT * FROM car_model";
   $result3 = mysqli_query($con, $sql3);
   // while($row = mysqli_fetch_assoc($result)){
   // echo $row['supplier_id']; 
   // }
   $sql4 = "SELECT * FROM cars_sfx";
   $result4 = mysqli_query($con, $sql4);
   
   $sql5 = "SELECT * FROM cars_variant";
   $result5 = mysqli_query($con, $sql5);

   $sql6 = "SELECT * FROM cars_color";
   $result6 = mysqli_query($con, $sql6);
?>



<div class="container p-5 m-5">
 <form class="row g-3 filter" action="filter.php" method="POST">


                <div class="col-md-2">
                    <select id='searchByModel' class="form-select" name="model" onChange="searchFilter()">
                        <option value=''>-- Car Model --</option>
                        <?php while($row3 = mysqli_fetch_assoc($result3)){ ?>
    <option value='<?php echo $row3["model_id"] ?>'><?php echo $row3["model_name"] ?></option>
<?php } ?>
                    </select>
                    </div>

                    <div class="col-md-2">
                    <select id='searchBySFX' class="form-select" name="sfx" onChange= "searchFilter()">
                        <option value=''>-- SFX --</option>
                        <?php while($row4 = mysqli_fetch_assoc($result4)){ ?>
    <option value='<?php echo $row4["sfx_id"] ?>'><?php echo $row4["sfx_name"] ?></option>
<?php } ?>
                    </select>
                    </div>

                    <div class="col-md-2">
                    <select id='searchByVariant' class="form-select" name="variant" onChange= "searchFilter()">
                        <option value=''>-- Variant --</option>
                        <?php while($row5 = mysqli_fetch_assoc($result5)){ ?>
    <option value='<?php echo $row5["variant_id"] ?>'><?php echo $row5["variant_name"] ?></option>
<?php } ?>
                    </select>
                    </div>

                    <div class="col-md-2">
                    <select id='searchByColor' class="form-select" name="color" onChange= "searchFilter()">
                        <option value=''>-- Color --</option>
                        <?php while($row6 = mysqli_fetch_assoc($result6)){ ?>
    <option value='<?php echo $row6["colors_id"] ?>'><?php echo $row6["colors_name"] ?></option>
<?php } ?>
                    </select>
                    </div>
                    </form>
                    </div>

<div id="userData"></div>
<script>
   function searchFilter(){
    $.ajax({
        type: 'POST',
        url: 'getData.php',
        data: 'supplier=<?php echo $supplier; ?>'+
        '&seller=<?php echo $seller; ?>'+
        '&steering=<?php echo $steering; ?>'+
        '&model='+$('#searchByModel').val()+
        '&sfx='+$('#searchBySFX').val()+
        '&variant='+$('#searchByVariant').val()+
        '&color='+$('#searchByColor').val(),
        success:function(data){
            // $('.loading-overlay').hide();  
            $('#userData').html(data);
            // alert('model'); 
        }
    });
}
</script>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 <script src="main.js"></script>
</body>
</html>