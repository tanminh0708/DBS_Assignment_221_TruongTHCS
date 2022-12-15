<?php
 $servername = "localhost";
 $username = "root"; 
 $password = ""; 
 $database = "TruongTHCS";

 // Create connection to dbs
 $connection = new mysqli($servername, $username, $password, $database); 
 $MSHS="";
$MonHoc="";
$HocKy="";
$NamHoc="";
$KT_Mieng="";
$KT_15phut= "";
$KT_1tiet= "";
$KT_CuoiKi= "";
 $errorMessage = ""; 
 $successMessage = ""; 

 if ( $_SERVER['REQUEST_METHOD'] == 'POST'){
    $MSHS = $_POST["MSHS"];
    $MonHoc = $_POST["MonHoc"]; 
    $HocKy = $_POST["HocKy"];  
    $NamHoc = $_POST["NamHoc"]; 
    $KT_Mieng = $_POST["KT_Mieng"]; 
    $KT_15phut = $_POST["KT_15phut"]; 
    $KT_1tiet = $_POST["KT_1tiet"]; 
    $KT_CuoiKi = $_POST["KT_CuoiKi"]; 
            do {
                if (empty($MSHS) || empty($MonHoc) || empty($HocKy) ||  empty($NamHoc)){
                    $errorMessage = "Thiếu mã số học sinh, môn học, học kỳ hoặc năm học ";
                    break; 
                }  
                //add new teacher to database. 
                $sql = "INSERT INTO KIEMTRA (MSHS, MonHoc, HocKy, NamHoc, KT_Mieng, KT_15phut,KT_1tiet,KT_CuoiKi) 
                                VALUES ('$MSHS', '$MonHoc','$HocKy' ,'$NamHoc' , '$KT_Mieng' , '$KT_15phut', '$KT_1tiet', '$KT_CuoiKi')"; 
                $result = $connection->query($sql);
                if (!$result){
                    $errorMessage  ="Invaild query: " . $connection->error; 
                    break; 
                }
                $MSHS="";
                $MonHoc="";
                $HocKy="";
                $NamHoc="";
                $KT_Mieng="";
                $KT_15phut= "";
                $KT_1tiet= "";
                $KT_CuoiKi= "";
                $successMessage = "Client added successfully";
               
                header("location: /SecondarySchool/Diem/index.php" ); 
                exit; 
            
            }  while (false); 
}    
?>


    <!DOCTYPE html>
    <html>
    <head>
        <title>Thêm học sinh</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class = "container my-5">
        <div class = "text-center mt-5 mb-4"><h2> Nhập điểm học sinh</h2></div>
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
            <div class = "row mb-3">
                <label class = "col-sm-3 col-form-label"> Mã số học sinh </label>
                <div class = "col-sm-6">
                    <input type = "text" class = "form-control" placeholder = "149"name = "MSHS"  value = "<?php echo $MSHS; ?>">
                </div>
            </div>
            <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Môn học</label>
                    <div class = "col-sm-6">
                        <select id="MonHoc" input type = "select"  class = "form-control" name = "MonHoc" value = "<?php echo $MonHoc; ?>" >
                        <option value="TOAN">Toán</option>
  <option value="TIENG ANH">Tiếng Anh</option>
  <option value="VAT LY">Vật lý</option>
  <option value="HOA HOC">Hoá học</option>
  <option value="SINH HOC">Sinh học</option>
  <option value="LICH SU">Lịch sử</option>
  <option value="DIA LY">Địa lý</option>
  <option value="GDCD">Giáo dục công dân</option>
  <option value="TIN HOC">Tin học</option>
  <option value="CONG NGHE">Công nghệ</option>
    </select>
                    </div>
                </div>  
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Học kỳ </label>
                    <div class = "col-sm-6">
                    <select id="Gender" class = "form-control" input type = "select"  name = "HocKy" value = "<?php echo $HocKy; ?>">
    <option value="HK1">Học kỳ 1</option>
    <option value="HK2">Học kỳ 2</option>
    </select>
                    </div>
                </div> 
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Năm học </label>
                    <div class = "col-sm-6">
                    <select id="Gender" class = "form-control" input type = "select"  name = "NamHoc" value = "<?php echo $NamHoc; ?>">
                    <option value="2022-2023">2022-2023</option>
                    <option value="2021-2022">2021-2022</option>
                    <option value="2020-2021">2020-2021</option>
                    <option value="2019-2020">2019-2020</option>
    </select>
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