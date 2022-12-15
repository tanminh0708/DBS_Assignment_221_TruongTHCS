<!DOCTYPE html>
<html>
<head>
    <title>THCS X</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>

<body style = "margin: 50px;">

    <div class = "text-center mt-5 mb-4"> <h1> Quản lý giáo viên </h1> </div> 
    <a class="btn btn-primary" href = "/SecondarySchool/GV/create.php" role = "button">Thêm giáo viên</a>
    <a class="btn btn-info" href = "/SecondarySchool/GV/search.php" role = "button">Tìm kiếm </a>
    <a class="btn btn-warning" href = "/SecondarySchool/index.php" role = "button">Trở về trang chủ </a>

    <br>
    <table class = "table">
        <thead>
            <tr>
                <th>CCCD</th>
                <th>Họ và Tên lót</th>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Giới tính</th>
                <th>Số điện thoại</th>
                <th>Môn giảng dạy</th>
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
            $sql = "select * from GIAOVIEN"; 
            $result = $connection->query($sql);
            if (!$result){
                die ("Invaild query: " . $connection->error);
            }
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                <td> $row[CCCD].</td>
                <td>$row[HO_VA_TENLOT]</td>
                <td>$row[TEN]</td>
                <td>$row[Bdate]</td>
                <td>$row[Address]</td>
                <td>$row[Sex]</td>
                <td>$row[PhoneNumber]</td>
                <td>$row[MonGiangDay]</td>
                <td>
                    <a class='btn btn-primary btn-lg active' href = '/SecondarySchool/GV/UpdateGV.php?CCCD=$row[CCCD]'> Sửa</a>
                    <a class='btn btn-danger btn-lg active' href = '/SecondarySchool/GV/DeleteGV.php?CCCD=$row[CCCD]'> Xoá</a>
                    
                    </td>
                </tr>";
            }
            ?>
        </tbody>
    </table>

</body>


</html>
