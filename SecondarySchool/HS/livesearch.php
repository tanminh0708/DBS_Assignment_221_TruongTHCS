<?php
 $servername = "localhost";
 $username = "root"; 
 $password = ""; 
 $database = "TruongTHCS";
  // Create connection to dbs
$connection = mysqli_connect($servername, $username, $password, $database);
if (!$connection) {
    echo "Connection Failed" . mysqli_connect_error(); 
} 

if (isset($_POST['input'])){
    $input = $_POST['input']; 
    $query = "SELECT * from HOCSINH WHERE HO_VA_TENLOT like '{$input}%' OR TEN like '{$input}%' OR Address LIKE '{$input}%' OR Sex LIKE '{$input}%'"; 
    $result = mysqli_query($connection, $query); 
    if (mysqli_num_rows($result) > 0) { ?> 
        <table class = "table table-bordered table-striped mt-4">
        <thead>
            <tr>
                <th>MSHS</th>
                <th>Họ và Tên lót</th>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Giới tính</th>
            </tr>
        </thead>
        <tbody> 
            
        <?php 

        while ($row = mysqli_fetch_assoc($result)){
            $MSHS = $row["MSHS"];
            $HO_VA_TENLOT = $row["HO_VA_TENLOT"]; 
            $TEN = $row["TEN"];  
            $Bdate = $row["Bdate"]; 
            $Address = $row["Address"];  
            $Sex = $row["Sex"]; 
        
        ?>
        <tr>
        <td><?php echo $MSHS; ?> </td>
        <td><?php echo $HO_VA_TENLOT; ?> </td>
        <td><?php echo $TEN; ?> </td>
        <td><?php echo $Bdate; ?> </td>
        <td><?php echo $Address; ?> </td>
        <td><?php echo $Sex; ?> </td>
        </tr>
        </tbody>
    <?php } ?>    
    </table> 

<?php
    }
    else { echo "<h6 class = 'text danger text-center mt-3'> Không có dữ liệu </h6>"; }
    
}
?>