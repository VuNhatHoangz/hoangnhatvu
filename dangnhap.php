<!DOCTYPE html>
<html>
<head>

  <?php
    include ('connect.php'); 
  
    if (isset($_POST['xldangnhap'])) 
{
    //Lấy dữ liệu nhập vào
    $username = addslashes($_POST['uname']);
    $password = addslashes($_POST['psw']);
     
    //Kiểm tra đã nhập đủ tên đăng nhập với mật khẩu chưa
    if (!$username || !$password) {
        echo "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
     
    // mã hóa pasword
    //$password = md5($password);
     
    //Kiểm tra tên đăng nhập có tồn tại không
    $query = mysqli_query($db,"SELECT * FROM dangnhap WHERE taikhoan='$username'");
    if (mysqli_num_rows($query) == 0) {
        echo "Tên đăng nhập này không tồn tại. Vui lòng kiểm tra lại. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
     
    //Lấy mật khẩu trong database ra
    $row = mysqli_fetch_array($query);
     
    //So sánh 2 mật khẩu có trùng khớp hay không
    if ($password != $row['MatKhau']) {
        echo "Mật khẩu không đúng. Vui lòng nhập lại. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
    }
  
    //Lưu tên đăng nhập
    $_SESSION['taikhoan'] = $username;
    $_SESSION['pl'] = $row['phanloai'];
    if($row['phanloai'] == 1){
      header("Location: bangGVCN.php");
    }
    else{
      header("Location: banghocsinh.php");
    }
      exit;
}
   
?>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- day la css -->
<style>
body {font-family: Arial, Helvetica, sans-serif;
background: palegreen;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  width: 1000px;
  margin: auto;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

h2{
  text-align: center;
}
</style>
</head>
<body>

<h2>Đăng Nhập</h2>

<form action="dangnhap.php?do=login" method="post">
  <div class="imgcontainer">
    <img src="vy1logo.jpg" alt="Avatar" class="avatar" height="500px" width="-20px">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit" name="xldangnhap">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember Password
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
</body>
</html>
