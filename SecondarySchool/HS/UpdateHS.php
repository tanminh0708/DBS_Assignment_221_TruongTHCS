<?php
  $servername = "localhost";
  $username = "root"; 
  $password = ""; 
  $database = "TruongTHCS";
   // Create connection to dbs
 $connection = new mysqli($servername, $username, $password, $database); 

 $MSHS = "";
 $HO_VA_TENLOT = ""; 
 $TEN = ""; 
 $Bdate = "";
 $Address = "";
 $Sex = "";

 $errorMessage = ""; 
 $successMessage = ""; 
    if ($_SERVER['REQUEST_METHOD'] == 'GET'){

        if (!isset($_GET["MSHS"])) {
            header("location: /SecondarySchool/HS/index.php"); 
            exit; 
        }

        $MSHS = $_GET["MSHS"]; 

        //read the row of the selected client. 
        
        $sql = "SELECT * FROM HOCSINH WHERE MSHS = '$MSHS' ";
        $result = $connection->query($sql);
        $row = $result->fetch_assoc(); 
        if (!$row) {
            header("location: /SecondarySchool/HS/index.php"); 
            exit; 
        }

        $MSHS = $row["MSHS"];
        $HO_VA_TENLOT = $row["HO_VA_TENLOT"]; 
        $TEN = $row["TEN"];  
        $Bdate = $row["Bdate"]; 
        $Address = $row["Address"];  
        $Sex = $row["Sex"]; 
    }

   
    else {
        // POST METHOD: UPDATE DATA OF THE CLIENT. 
        $MSHS = $_POST["MSHS"];
        $HO_VA_TENLOT = $_POST["HO_VA_TENLOT"]; 
        $TEN = $_POST["TEN"];  
        $Bdate = $_POST["Bdate"]; 
        $Address = $_POST["Address"];  
        $Sex = $_POST["Sex"]; 

        do {
            if (empty($HO_VA_TENLOT) || empty($TEN) || empty($Address)){
                $errorMessage = "Nhập thiếu Họ và tên hoặc  địa chỉ";
                break; 
            }  
            $sql = "UPDATE HOCSINH SET 
            HO_VA_TENLOT = '$HO_VA_TENLOT', 
            TEN = '$TEN', 
            Bdate = '$Bdate',
            Sex = '$Sex',
            Address = '$Address'
            WHERE MSHS = '$MSHS' ";


            $result = $connection->query($sql);

            if (!$result){
                $errorMessage  ="Invaild query: " . $connection->error; 
                break; 
            }

            $successMessage = "Client updated successfully"; 

            header("location: /SecondarySchool/HS/index.php"); 
            exit; 

        }
        while (false); 
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa thông tin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class = "container my-5">
       <div class = "text-center mt-5 mb-4"> <h2> Chỉnh sửa thông tin </h2> </div>
        <?php
        if (!empty($errorMessage)) {
            echo "
            <div class='alert alert-danger alert-dismissible'>
  <strong>$errorMessage</strong> 
  
</div>
            "; 
        } 
        ?>
        <form method = "post">
            <input type = "hidden" name = "MSHS" value = "<?php echo $MSHS; ?>">
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Họ và tên lót </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "Phan Trọng"name = "HO_VA_TENLOT" value = "<?php echo $HO_VA_TENLOT; ?>">
                </div>
            </div>
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Tên </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "Nhân" name = "TEN" value = "<?php echo $TEN; ?>">
                </div>
            </div> 
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Ngày sinh </label>
                <div class = "col-sm-6">
                    <input type = "date" class = "form-control" name = "Bdate" value = "<?php echo $Bdate; ?>">
                </div>
            </div>  
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Địa chỉ </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "Quận 10" name = "Address" value = "<?php echo $Address; ?>">
                </div>
            </div> 
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Giới tính </label>
                <div class = "col-sm-6">
                <select id="Gender" input type = "select"  class = "form-control" name = "Sex" value = "<?php echo $Sex; ?>">
  <option value="NAM">Nam</option>
  <option value="NU">Nữ</option>
</select>
                </div>
            </div>   
        <?php
        if (!empty($successMessage)) {
            echo "
            <div class='alert alert-success' role='alert'>
                <strong>$successMessage</strong>
            </div>
            "; 

        } 
        ?>

            <div class = "row mb-3">
                <div class = "offset-sm-3 col-sm-3 d-grid">
                        <button type = "submit"  class = "btn btn-primary"> Submit
                </div>

                <div class = "col-sm-3 d-grid">    
                 <a class="btn btn-outline-primary" href = "/SecondarySchool/HS/index.php" role = "button"> Cancel</a>
                </div>
                
            </div> 
    </div>
        </form>
    </body>
</html>