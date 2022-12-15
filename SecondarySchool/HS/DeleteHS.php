

<?php
if (isset($_GET["MSHS"])){
$MSHS =   $_GET["MSHS"]; 

$servername = "localhost";
$username = "root"; 
$password = ""; 
$database = "TruongTHCS";
 // Create connection to dbs
$connection = new mysqli($servername, $username, $password, $database); 

$sql = "DELETE FROM HOCSINH WHERE MSHS = '$MSHS'";
            $result = $connection->query($sql);

            if (!$result){
                $errorMessage  ="Invaild query: " . $connection->error; 
            }
        header("Location:/SecondarySchool/HS/index.php"); 
        exit; 
}
?>