
<!DOCTYPE html>
<html>
<head>
    <title>Tìm kiếm giáo viên</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body style = "margin: 50px;">
<div class="container" style = "max-width = 50%;">
    <div class = "text-center mt-5 mb-4"> <h2> Tìm kiếm giáo viên </h2> 
    </div>
    <a class="btn btn-primary" href = "/SecondarySchool/GV/index.php" role = "button">Trở về</a>

    <input type = "text" class  = "form-control" id = "live_search" autocomplete = "off" placeholder = "Seach here">
    
    <div id = "searchresult"> </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <script type = "text/javascript"> 
    $(document).ready(function() {
        $("#live_search").keyup(function(){
            var input = $(this).val();
            if (input != ""){
                $.ajax ({
                    url : "livesearch.php",
                    method: "POST", 
                    data: {input:input}, 

                    success: function (data){
                        $("#searchresult").html(data); 
                        $("#searchresult").css("display", "block"); 
                    }
                })
            }
            else {
                $("#searchresult").css("display", "none"); 
            }
        })
    })
    </script>
</html>