<!DOCTYPE html>
<html lang="en">
<head>
<?php 
      include ('connect.php');

      $query = mysqli_query($db,"SELECT * FROM GiaoVien");
?>
  <title>Quản Lý Học Sinh THPT Việt Yên Số 1</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

  <!-- btn -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- btn -->
  <link rel="stylesheet" type="text/css" href="gv.css">
  <!-- search -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" media="screen" href="search_box.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="search.css">

  <!-- search -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /*lll*/
  /*3*/
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
    <?php include ('menu.php'); ?>
    <!-- <li><a href="#" class="active">Học Sinh</a></li><br/>
    <li><a href="#" class="active">Điểm</a></li><br/>
    <li><a href="#" class="active">Lớp</a></li><br/>
    <li><a href="#" class="active">GVCN</a></li><br/>
    <li><a href="#" class="active">Khối</a></li><br/>
    <li><a href="#" class="active">Môn Học</a></li><br/>
    <li><a href="#" class="active">Hạnh Kiểm</a></li><br/> -->
  </ul>
</div>
</nav>
<article style="background: lightblue;padding: 0px;">
  <h3 class="h3">Quản Lý Giáo Viên</h3>
  <div class=" sangphai">
    <div class="box">
      <input type="text" placeholder="Search here">
      <a class="a1"><i class="fas fa-search-location"></i></a>
    </div>
  </div>
  <button class="themxoasua"><a href="#">Thêm</a></button>
  <p></p>
      <div class="scroll"; style="width:999px;height: 385px;">
        <table class="edit">
        <tr>
          <th>Mã GV</th>
          <th>Tên Giáo Viên</th> 
          <th>Địa Chỉ</th>
          <th>Số Điện Thoại</th>
          <th>Edit</th>
          <th>Xoá</th>   
        </tr>
        <?php
            if (mysqli_num_rows($query) > 0) {
              while($result=mysqli_fetch_array($query)){
          ?>
        <tr>
            <td><?php echo $result['MaGV']; ?></td>
            <td><?php echo $result['TenGV']; ?></td>
            <td><?php echo $result['DiaChi']; ?></td>
            <td><?php echo $result['SDT']; ?></td>
            <td>
              <a href="#">
                
                <img src="edit.png">
              </a>
            </td>
            <td>
              <a href="#">
                
                <img src="delete.png">
              </a>
            </td>
            <td></td>
            <td></td>
          </tr>
      <?php
        }
      }
      ?>
      
      </table>
</article>
</section>

<footer>
    <p>SỞ GIÁO DỤC & ĐÀO TẠO TỈNH BẮC GIANG</p>
    <p>Email : thptvietyenso1@gmail.com</p>
    <p>Địa chỉ : TT BÍCH ĐỘNG - VIỆT YÊN - BẮC GIANG</p>
  </footer>

</body>
</html>
