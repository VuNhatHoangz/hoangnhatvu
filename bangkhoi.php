<!DOCTYPE html>
<html lang="en">
<head>
<?php 
      include ('connect.php');

      $query = mysqli_query($db,"SELECT * FROM Khoi");
?>
  <title>Quản Lý Học Sinh THPT Việt Yên Số 2</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
      <a class="navbar-brand" href="#">LOGO</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="http://localhost:91/vuhoangnhat/dangnhap.php"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
      </ul>
    </div>
  </div>
</nav>
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
<article style="background: #f1f1f1;">
  <h3>Quản Lý Khối</h3>
    <table style="width:110%;height: 300px;">
        <tr>
          <th>Mã Khối</th>
          <th>Tên Khối</th> 
        </tr>
        <?php
            if (mysqli_num_rows($query) > 0) {
              while($result=mysqli_fetch_array($query)){
          ?>
        <tr>
            <td><?php echo $result['MaKhoi']; ?></td>
            <td><?php echo $result['TenKhoi']; ?></td>

          </tr>
      <?php
        }
      }
      ?>
      
      </table>
</article>
</section>

<footer>
    <p>Liên hệ : 0967043798</p>
    <p>Email : thptvietyenso1@gmail.com</p>
    <p>Địa chỉ : Nha Trang - Khánh Hòa - Việt Nam</p>
  </footer>

</body>
</html>
