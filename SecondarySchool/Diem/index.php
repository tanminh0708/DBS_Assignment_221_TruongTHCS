<!DOCTYPE html>
<html>
<head>
    <title>Quản lý điểm số</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>

<body style = "margin: 50px;">

    <div class = "text-center mt-5 mb-4"> <h1> Quản lý điểm số </h1> </div> 
    <a class="btn btn-primary" href = "/SecondarySchool/Diem/create.php" role = "button">Nhập điểm</a>
    <a class="btn btn-info" href = "/SecondarySchool/Diem/search.php" role = "button">Tìm kiếm </a>
    <a class="btn btn-warning" href = "/SecondarySchool/index.php" role = "button">Trở về trang chủ </a>
    <br>
    <table class = "table">
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
            $servername = "localhost";
            $username = "root"; 
            $password = ""; 
            $database = "TruongTHCS";

            // Create connection to dbs
            $connection = new mysqli($servername, $username, $password, $database); 
            if ($connection->connect_error) {
                die ("Connection error: " . $connection->connect_error);
            }
            // read all row from database table. 
            $sql = "select K.MSHS, H.HO_VA_TENLOT, H.TEN, K.MonHoc, K.HocKy, K.NamHoc, K.KT_Mieng, K.KT_15phut, K.KT_1tiet, K.KT_CuoiKi from kiemtra K LEFT JOIN hocsinh H ON K.MSHS = H.MSHS"; 
            $result = $connection->query($sql);
            if (!$result){
                die ("Invaild query: " . $connection->error);
            }
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                <td> $row[MSHS].</td>
                <td>$row[HO_VA_TENLOT]</td>
                <td>$row[TEN]</td>
                <td>$row[MonHoc]</td>
                <td>$row[HocKy]</td>
                <td>$row[NamHoc]</td>
                <td>$row[KT_Mieng]</td>
                <td>$row[KT_15phut]</td>
                <td>$row[KT_1tiet]</td>
                <td>$row[KT_CuoiKi]</td>
                <td>
                    <a class='btn btn-primary btn-lg active' href = '/SecondarySchool/Diem/UpdateDiem.php?MSHS=$row[MSHS]'> Sửa</a>                    
                    </td>
                </tr>";
            }
            ?>
        </tbody>
    </table>

</body>


</html>
