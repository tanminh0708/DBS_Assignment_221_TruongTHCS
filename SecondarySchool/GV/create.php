<?php
 $servername = "localhost";
 $username = "root"; 
 $password = ""; 
 $database = "TruongTHCS";

 // Create connection to dbs
 $connection = new mysqli($servername, $username, $password, $database); 


 $CCCD = "";
 $HO_VA_TENLOT = ""; 
 $TEN = ""; 
 $Bdate = "";
 $Address = "";
 $Sex = "";
 $PhoneNumber = "";
 $MonGiangDay = "";

 $errorMessage = ""; 
 $successMessage = ""; 

 if ( $_SERVER['REQUEST_METHOD'] == 'POST'){
            $CCCD =$_POST["CCCD"];
            $HO_VA_TENLOT = $_POST["HO_VA_TENLOT"]; 
            $TEN = $_POST["TEN"]; 
            $Bdate = $_POST["Bdate"];
            $Address = $_POST["Address"];
            $Sex = $_POST["Sex"];
            $PhoneNumber = $_POST["PhoneNumber"];
            $MonGiangDay =$_POST["MonGiangDay"];
            do {
                if (empty($CCCD) || empty($HO_VA_TENLOT) || empty($TEN) || empty($MonGiangDay) ||  empty($Address) || empty ($PhoneNumber)){
                    $errorMessage = "All the fields are required";
                    break; 
                }  
                //add new teacher to database. 
                $sql = "INSERT INTO GIAOVIEN (CCCD, HO_VA_TENLOT, TEN, Bdate, Address, Sex, PhoneNumber, MonGiangDay) 
                                VALUES ('$CCCD', '$HO_VA_TENLOT','$TEN' ,'$Bdate' , '$Address' , '$Sex' , '$PhoneNumber', '$MonGiangDay')"; 
                $result = $connection->query($sql);
                if (!$result){
                    $errorMessage  ="Invaild query: " . $connection->error; 
                    break; 
                }
                $CCCD = "";
                $HO_VA_TENLOT = ""; 
                $TEN = ""; 
                $Bdate = "";
                $Address = "";
                $Sex = "";
                $PhoneNumber = "";
                $MonGiangDay = "";
                $successMessage = "Client added successfully";
               
                header("location: /SecondarySchool/GV/index.php" ); 
                exit; 
            
            }  while (false); 
}    
?>


    <!DOCTYPE html>
    <html>
    <head>
        <title>THCS X</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class = "container my-5">
            <h2> Thêm giáo viên </h2>
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
                    <label class = "col-sm-3 col-form-label"> CCCD </label>
                    <div class = "col-sm-6">
                        <input type = "text" class = "form-control" placeholder = "115" name = "CCCD" value = "<?php echo $CCCD; ?>">
                    </div>
                </div> 
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Họ và tên lót </label>
                    <div class = "col-sm-6">
                        <input type = "text" class = "form-control" placeholder = "Trần Minh"name = "HO_VA_TENLOT" value = "<?php echo $HO_VA_TENLOT; ?>">
                    </div>
                </div>
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Tên </label>
                    <div class = "col-sm-6">
                        <input type = "text" class = "form-control" placeholder = "Trí" name = "TEN" value = "<?php echo $TEN; ?>">
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
                        <input type = "text" class = "form-control" placeholder = "Quận 10" name = "Address" value = "<?php echo $Address; ?>"">
                    </div>
                </div> 
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Giới tính </label>
                    <div class = "col-sm-6">
                    <select id="Gender" class = "form-control" input type = "select"  name = "Sex" value = "<?php echo $Sex; ?>">
    <option value="NAM">Nam</option>
    <option value="NU">Nữ</option>
    </select>
                    </div>
                </div> 
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Số điện thoại </label>
                    <div class = "col-sm-6">
                        <input type = "text" class = "form-control" placeholder= "0969241768" name = "PhoneNumber" value = "<?php echo $PhoneNumber; ?>"">
                    </div>
                </div> 
                
                <div class = "row mb-3">
                    <label class = "col-sm-3 col-form-label"> Môn giảng dạy</label>
                    <div class = "col-sm-6">
                        <select id="MonHoc" input type = "select"  class = "form-control" name = "MonGiangDay" value = "<?php echo $MonGiangDay; ?>" >
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
                    <a class="btn btn-outline-primary" href = "/SecondarySchool/GV/index.php" role = "button"> Cancel</a>
                    </div>
                    
                </div> 
        </div>
            </form>
        </body>
    </html>