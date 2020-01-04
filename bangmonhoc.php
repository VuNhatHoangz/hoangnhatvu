<!DOCTYPE html>
<html lang="en">
<head>
<?php 
      include ('connect.php');

      $query = mysqli_query($db,"SELECT * FROM MonHoc");
?>
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

  <!-- search -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    body{
      margin: auto;
    }

.vertical-menu {
  width: 500px;
}

.vertical-menu a {
  background-color: rgb(238, 238, 238);
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
  height: 79px;
  width: 300px;
}

.vertical-menu a:hover {
  background-color: rgb(204, 204, 204);
}

.vertical-menu a.active {
  background-color: rgb(76, 175, 109);
  color: rgb(255, 255, 255);
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
/* xxxxxxxxxx */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}  

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}

/*3*/
.scroll{
  display: block;
  border: 3px double black;
  padding: 5px;
  margin-top: 5px;
  overflow: scroll;
  }
  .edit{
    width: 1000px;
    height: 410px;
    border: 2px groove black;
  }
  header{
    background-image: url("vietyen1.jpeg");
    background-size: cover;
    background-position: center;
  }
  body{
    background-color: lightblue;
  }
  .img{
    width: 1500px;
    height: 200px;
  }

  .themxoasua{
    margin-left: 50px;
  }
  .h3{
    margin: 7px;
  }

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
    <nav >
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
<!-- 1 -->
<article style="background: lightblue;padding: 0px;">
  <h3 class="h3">Quản Lý Môn Học</h3>
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
<!-- 1 -->
        <tr>
          <th>Mã Môn Học</th>
          <th>Tên Môn Học</th> 
          <th>Edit</th>
          <th>Xoá</th>   
        </tr>
        <?php
            if (mysqli_num_rows($query) > 0) {
              while($result=mysqli_fetch_array($query)){
          ?>
        <tr>
            <td><?php echo $result['MaMH']; ?></td>
            <td><a href="diemmonhoc.php?id=<?php echo $result['MaMH']; ?>&hk=I&lop=Lop10a0"><?php echo $result['TenMH']; ?></a></td>
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
