

<?php
if (isset($_GET["CCCD"])){
$CCCD =   $_GET["CCCD"]; 

$servername = "localhost";
$username = "root"; 
$password = ""; 
$database = "TruongTHCS";
 // Create connection to dbs
$connection = new mysqli($servername, $username, $password, $database); 

$sql = "DELETE FROM GIAOVIEN WHERE CCCD = '$CCCD'";
            $result = $connection->query($sql);

            if (!$result){
                $errorMessage  ="Invaild query: " . $connection->error; 
            }
        header("Location:/SecondarySchool/GV/index.php"); 
        exit; 
}
?>