<?php 
include('constant.php');
$sql = "SELECT * FROM t_suppliers";
$result = mysqli_query($con, $sql);
// while($row = mysqli_fetch_assoc($result)){
// echo $row['supplier_id']; 
// }
$sql1 = "SELECT * FROM t_whole_sellers";
$result1 = mysqli_query($con, $sql1);

$sql2 = "SELECT * FROM t_steering_types";
$result2 = mysqli_query($con, $sql2);

?>


 
<div class="container p-5 m-5">
 <form class="row g-3 filter" action="filter.php" method="POST">

                <div class="col-md-2">
                    <select id='searchBySupplier' class="form-select" name="supplier">
                        <option value=''>-- Supplier--</option>
<?php while($row = mysqli_fetch_assoc($result)){ ?>
    <option value='<?php echo $row["supplier_id"] ?>'><?php echo $row["supplier_name"] ?></option>
<?php } ?>
                    </select>
                    </div>
                    <div class="col-md-2">
                    <select id='searchBySeller' class="form-select" name="seller">
                        <option value=''>-- Whole Seller--</option>
                        <?php while($row1 = mysqli_fetch_assoc($result1)){ ?>
                        <option value='<?php echo $row1['seller_id']?>'><?php echo $row1['seller_name'];?></option>
                        <?php } ?>
                    </select>
                    </div>
                    <div class="col-md-2">
                    <select id='searchBySteering' class="form-select" name="steering">
                        <option value=''>-- Steering Type--</option>
                        <?php while($row2 = mysqli_fetch_assoc($result2)){ ?>
                            <option value='<?php echo $row2['steering_id']?>'><?php echo $row2['steering_type'];?></option>
                        <?php } ?>
                    </select>
                    </div>
                    <div class="col-md-2">
                    <button type="submit" id="button" class="btn btn-primary">Submit</button>

                </div>
</form>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 <script src="main.js"></script>
</body>
</html>
