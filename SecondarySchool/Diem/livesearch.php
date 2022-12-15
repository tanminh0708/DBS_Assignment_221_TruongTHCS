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
    $query = "SELECT K.MSHS, H.HO_VA_TENLOT, H.TEN, K.MonHoc, K.HocKy, K.NamHoc, K.KT_Mieng, K.KT_15phut, K.KT_1tiet, K.KT_CuoiKi 
    from KIEMTRA K LEFT JOIN HOCSINH H ON K.MSHS = H.MSHS  
    WHERE K.MSHS LIKE'{$input}%' OR H.HO_VA_TENLOT LIKE '{$input}%' OR TEN LIKE '{$input}%' OR K.MonHoc LIKE '{$input}%' OR K.HocKy LIKE '{$input}%' OR NamHoc like '{$input}%'"; 

    $result = mysqli_query($connection, $query); 
    if (mysqli_num_rows($result) > 0) { ?> 
        <table class = "table table-bordered table-striped mt-4">
        <thead>
            <tr>
            <th>MSHS</th>
                <th>Họ và Tên lót</th>
                <th>Tên</th>
                <th>Môn học</th>
                <th>Học kỳ</th>
                <th>Năm học</th>
                <th>Điểm miệng</th>
                <th>Điểm 15 phút</th>
                <th>Điểm 1 tiết</th>
                <th>Điểm cuối kì</th>
            </tr>
        </thead>
        <tbody> 
            
        <?php 

        while ($row = mysqli_fetch_assoc ($result)){
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
      
        ?>
        <tr>
        <td><?php echo $MSHS; ?> </td>
        <td><?php echo $HO_VA_TENLOT; ?> </td>
        <td><?php echo $TEN; ?> </td>
        <td><?php echo $MonHoc; ?> </td>
        <td><?php echo $HocKy; ?> </td>
        <td><?php echo $NamHoc; ?> </td>
        <td><?php echo $KT_Mieng; ?> </td>
        <td><?php echo $KT_15phut; ?> </td>
        <td><?php echo $KT_1tiet; ?> </td>
        <td><?php echo $KT_CuoiKi; ?> </td>

        </tr>
        </tbody>
        <?php } ?>
        </table> 

<?php
    }
    else { echo "<h6 class = 'text danger text-center mt-3'> Không có dữ liệu </h6>"; }
    
}
?>