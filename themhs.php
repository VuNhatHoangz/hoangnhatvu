<!DOCTYPE html>
<html lang="en">
<head>
<!-- <?php 
      // include ('connect.php');

      // $query = mysqli_query($db,"SELECT * FROM HocSinh,Lop WHERE HocSinh.MaLop = Lop.MaLop and 
      //   Lop.TenLop='".$_GET['lop']."'");

      // $query1 =  mysqli_query($db,"SELECT * FROM Lop");
?> -->
  <title>Quản Lý Học Sinh THPT Việt Yên Số 1</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

  <!-- btn -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- btn -->

  <!-- search -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" media="screen" href="search_box.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="search.css">
<link rel="stylesheet" type="text/css" href="themhs.css">
  <!-- search -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /*//*/
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">SỞ GD & ĐÀO TẠO - TRƯỜNG THPT VIỆT YÊN SỐ 1</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="http://localhost:8888/hoangnhatvu/dangnhap.php"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- 2 -->

<img class="img" src="vy1logo.jpg">

<!-- 2 -->
<section>
    <nav  >
<div class="vertical-menu">
    <ul class="nav navbar-nav">
        <?php       include ('menu.php'); ?>
    <!-- <li><a href="http://localhost:91/website/banghocsinh.html" class="active">Học Sinh</a></li><br/>
    <li><a href="http://localhost:91/website/bangkhoi.html" class="active">Điểm</a></li><br/>
    <li><a href="#" class="active">Lớp</a></li><br/>
    <li><a href="#" class="active">GVCN</a></li><br/>
    <li><a href="#" class="active">Khối</a></li><br/>
    <li><a href="#" class="active">Môn Học</a></li><br/>
    <li><a href="#" class="active">Hạnh Kiểm</a></li><br/> -->
  </ul>
</div>
</nav>
<!-- 1 -->
<article style="background: lightblue;padding: 0px;">
  <h3 class="h3">Thêm Học Sinh</h3>
  <button class="themxoasua">Lưu</button>
      <div class="container">
    <label for="uname"><b>Tên Học Sinh</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Họ Học Sinh</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
  </div>
</article>
</section>

<footer>
    <p>SỞ GIÁO DỤC & ĐÀO TẠO TỈNH BẮC GIANG</p>
    <p>Email : thptvietyenso1@gmail.com</p>
    <p>Địa chỉ : TT BÍCH ĐỘNG - VIỆT YÊN - BẮC GIANG</p>
  </footer>

</body>
</html>
