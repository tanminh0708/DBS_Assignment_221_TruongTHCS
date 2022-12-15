<?php
  $servername = "localhost";
  $username = "root"; 
  $password = ""; 
  $database = "TruongTHCS";
   // Create connection to dbs
 $connection = new mysqli($servername, $username, $password, $database); 

 $MSHS="";
$HO_VA_TENLOT="";
$TEN="";
$MonHoc="";
$HocKy="";
$NamHoc="";
$KT_Mieng="";
$KT_15phut= "";
$KT_1tiet= "";
$KT_CuoiKi= "";

 $errorMessage = ""; 
 $successMessage = ""; 
    if ($_SERVER['REQUEST_METHOD'] == 'GET'){

        if (!isset($_GET["MSHS"])) {
            header("location: /SecondarySchool/Diem/index.php"); 
            exit; 
        }

        $MSHS = $_GET["MSHS"]; 

        //read the row of the selected client. 
        
        $sql = "select K.MSHS, H.HO_VA_TENLOT, H.TEN, K.MonHoc, K.HocKy, K.NamHoc, K.KT_Mieng, K.KT_15phut, K.KT_1tiet, K.KT_CuoiKi from kiemtra K LEFT JOIN hocsinh H ON K.MSHS = H.MSHS where K.MSHS = '$MSHS' ";
        $result = $connection->query($sql);
        $row = $result->fetch_assoc(); 
        if (!$row) {
            header("location: /SecondarySchool/Diem/index.php"); 
            exit; 
        }

        $MSHS = $row["MSHS"];
        $HO_VA_TENLOT = $row["HO_VA_TENLOT"]; 
        $TEN = $row["TEN"];  
        $MonHoc = $row["MonHoc"]; 
        $HocKy = $row["HocKy"];  
        $NamHoc = $row["NamHoc"]; 
        $KT_Mieng = $row["KT_Mieng"]; 
        $KT_15phut = $row["KT_15phut"]; 
        $KT_1tiet = $row["KT_1tiet"]; 
        $KT_CuoiKi = $row["KT_CuoiKi"]; 
    }

   
    else {
        // POST METHOD: UPDATE DATA OF THE CLIENT. 
        $MSHS = $_POST["MSHS"];
        $HO_VA_TENLOT = $_POST["HO_VA_TENLOT"]; 
        $TEN = $_POST["TEN"];  
        $MonHoc = $_POST["MonHoc"]; 
        $HocKy = $_POST["HocKy"];  
        $NamHoc = $_POST["NamHoc"]; 
        $KT_Mieng = $_POST["KT_Mieng"]; 
        $KT_15phut = $_POST["KT_15phut"]; 
        $KT_1tiet = $_POST["KT_1tiet"]; 
        $KT_CuoiKi = $_POST["KT_CuoiKi"]; 

        do {
            if (empty($HO_VA_TENLOT) || empty($TEN) || empty($HocKy)){
                $errorMessage = "Nhập thiếu Họ và tên hoặc  địa chỉ";
                break; 
            }  
            $sql = "UPDATE KIEMTRA SET 
            KT_Mieng = '$KT_Mieng', 
            KT_15phut = '$KT_15phut', 
            KT_CuoiKi = '$KT_CuoiKi',
            KT_1tiet = '$KT_1tiet'
            WHERE MSHS = '$MSHS' AND HocKy = '$HocKy' AND NamHoc = '$NamHoc' AND MonHoc = '$MonHoc'";


            $result = $connection->query($sql);

            if (!$result){
                $errorMessage  ="Invaild query: " . $connection->error; 
                break; 
            }

            $successMessage = "Client updated successfully"; 

            header("location: /SecondarySchool/Diem/index.php"); 
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
       <div class = "text-center mt-5 mb-4"> <h2> Chỉnh sửa điểm </h2> </div>
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
                <label class = "col-sm-3 col-form-label"> MSHS </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "111"name = "MSHS" readonly value = "<?php echo $MSHS; ?>">
                </div>
            </div>
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Họ và tên lót </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "Phan Trọng"name = "HO_VA_TENLOT" readonly value = "<?php echo $HO_VA_TENLOT; ?>">
                </div>
            </div>
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Tên </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "Nhân" name = "TEN" readonly value = "<?php echo $TEN; ?>">
                </div>
            </div> 
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Môn học </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" name = "MonHoc" readonly value = "<?php echo $MonHoc; ?>">
                </div>
            </div>  
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Học kỳ </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "Quận 10" name = "HocKy" readonly value = "<?php echo $HocKy; ?>">
                </div>
            </div> 
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Năm học </label>
                <div class = "col-sm-6">
                <input type = "select"  class = "form-control" name = "NamHoc" readonly value = "<?php echo $NamHoc; ?>">
                </div>
            </div>
   
            <table class = "table table-striped table">
            <thead>
            <tr>
                <th>Điểm miệng</th>
                <th>Điểm 15 phút</th>
                <th>Điểm 1 tiết</th>
                <th>Điểm cuối kì</th>
            </tr>
        </thead>
     
        </table>
        <br>
        <div class="container">
  <div class="row" form method = "post">
    <div class="col-md-3"> <input type = "text"   name = "KT_Mieng" class = "form-control" value = "<?php echo $KT_Mieng; ?>"> </div>
    <div class="col-md-3"> <input type = "text"   name = "KT_15phut" class = "form-control" value = "<?php echo $KT_15phut; ?>"> </div>
    <div class="col-md-3"> <input type = "text"   name = "KT_1tiet" class = "form-control" value = "<?php echo $KT_1tiet; ?>"> </div>
    <div class="col-md-3"> <input type = "text"   name = "KT_CuoiKi" class = "form-control" value = "<?php echo $KT_CuoiKi; ?>"> </div>
  </div>
</div>
</br>

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
                 <a class="btn btn-outline-primary" href = "/SecondarySchool/Diem/index.php" role = "button"> Cancel</a>
                </div>
                
            </div> 
    </div>
        </form>
    </body>
</html>