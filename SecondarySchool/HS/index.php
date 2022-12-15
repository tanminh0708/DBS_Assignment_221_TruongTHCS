<!DOCTYPE html>
<html>
<head>
    <title>Quản lý học sinh</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body style = "margin: 50px;">

    <div class = "text-center mt-5 mb-4"> <h1> Quản lý học sinh </h1> </div> 
    <a class="btn btn-primary" href = "/SecondarySchool/HS/create.php" role = "button">Thêm học sinh</a>
    <a class="btn btn-info" href = "/SecondarySchool/HS/search.php" role = "button">Tìm kiếm </a>
    <a class="btn btn-warning" href = "/SecondarySchool/index.php" role = "button">Trở về trang chủ </a>
    <br>
    <table class = "table">
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
            $sql = "select * from HOCSINH"; 
            $result = $connection->query($sql);
            if (!$result){
                die ("Invaild query: " . $connection->error);
            }
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                <td> $row[MSHS].</td>
                <td>$row[HO_VA_TENLOT]</td>
                <td>$row[TEN]</td>
                <td>$row[Bdate]</td>
                <td>$row[Address]</td>
                <td>$row[Sex]</td>
                <td>
                    <a class='btn btn-primary btn-lg active' href = '/SecondarySchool/HS/UpdateHS.php?MSHS=$row[MSHS]'> Sửa</a>
                    <a class='btn btn-danger btn-lg active' href = '/SecondarySchool/HS/DeleteHS.php?MSHS=$row[MSHS]'> Xoá</a>
                    
                    </td>
                </tr>";
            }
            ?>
        </tbody>
    </table>

</body>


</html>
