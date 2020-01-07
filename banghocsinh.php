<!DOCTYPE html>
<html lang="en">
<head>
<?php 
      include ('connect.php');

      $query = mysqli_query($db,"SELECT * FROM HocSinh,Lop WHERE HocSinh.MaLop = Lop.MaLop and 
        Lop.TenLop='".$_GET['lop']."'");

      $query1 =  mysqli_query($db,"SELECT * FROM Lop");
?>
  <title>Quản Lý Học Sinh THPT Việt Yên Số 1</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="hocsinh.css">
  <style>
  /*lll*/
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
  </ul>
</div>
</nav>
<!-- 1 -->
<article style="background: lightblue;padding: 0px;">
  <h3 class="h3">Quản Lý Học Sinh</h3>
  <div class=" sangphai">
    <!-- <div class="box">
      <input type="text" placeholder="Search here">
      <a class="a1"><i class="fas fa-search-location"></i></a>
    </div> -->
  </div>
  <div class="row" style="margin-bottom: 12px;">
    <div class="col-md-2" style="padding-left: 50px;">
      <button style="padding: 7px;" type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Thêm học sinh</button>
    </div>
    <div class="col-md-4">
      <select onchange="Redirect(this)" class="form-control btn btn-sm">
    <?php
      if (mysqli_num_rows($query1) > 0) {
              while($result1=mysqli_fetch_array($query1)){
                if($result1['TenLop']==$_GET['lop'])
                {
                  echo "<option value =banghocsinh.php?lop=".$result1['TenLop']." selected >".$result1['TenLop']."</option>";
                }
                else
                {
                    echo "<option value =banghocsinh.php?lop=".$result1['TenLop'].">".$result1['TenLop']."</option>";
                }
                
              }
      }
    ?>
     <script type="text/javascript">
            function Redirect(obj) {
              var value = obj.value;
              window.location="http://localhost:8888/hoangnhatvu/"+value;
            }
      </script>
  </select>
    </div>
    <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
      <form method="post">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Thêm học sinh</h4>
        </div>
        <div class="modal-body">
        <div class="form-group">
          <label for="usr1">Nhập mã số học sinh:</label>
          <input type="text" id="usr1" placeholder="Nhập mã số học sinh" class="form-control" name="code" require>
        </div>
        <div class="row">
        <div class="form-group col-md-4">
          <label for="usr2">Nhập họ:</label>
          <input type="text" id="usr2" placeholder="Nhập họ" class="form-control" name="first_name" require>
        </div>
          <div class="form-group col-md-8">
            <label for="usr3">Nhập tên học sinh:</label>
            <input type="text" id="usr3" placeholder="Nhập tên học sinh" class="form-control" name="last_name" require>
          </div>
          </div>
          <div class="form-group">
            <label for="usr4">Nhập địa chỉ:</label>
            <input type="text" id="usr4" placeholder="Nhập địa chỉ" class="form-control" name="address" require>
          </div>
          <div class="form-group">
            <label for="usr5">Chọn ngày sinh:</label>
            <input type="date" id="usr5" class="form-control" name="birth" require>
          </div>
          <div class="form-group">
            <label for="usr6">Nhập quê quán học sinh:</label>
            <input type="text" id="usr6" placeholder="Nhập quê quán học sinh" class="form-control" name="home_town" require>
          </div>
          <div class="form-group">
            <label for="sel1">Chọn lớp:</label>
            <?php
            $sql = "SELECT * FROM lop";
            $result = $db->query($sql);
              if (mysqli_num_rows($result) > 0) {
                echo '<select class="form-control" id="sel1" name="class_id">';
                      while($row = $result->fetch_assoc()){
                          echo "<option value ='".$row['MaLop']."' >Lớp ".$row['TenLop']."</option>";
                      }
              }else{
                echo "Chưa có lớp nào.";
              }
            ?>
            </select>
          </div>
          <div class="form-group row">
            <label for="usr7" class="col-md-2">Giới tính:</label>
            <div class="col-md-2">
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="gender" value="1" checked>Nam
              </label>
            </div>
          </div>
          <div class="col-md-2">
          <div class="form-check">
              <label class="form-check-label">
              <input type="radio" class="form-check-input" name="gender" value="2">Nữ
            </label>
          </div>
          </div>
          </div>
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-primary" name="btn_add_student" value="Thêm học sinh">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </form>
      </div>
      
    </div>
  </div>
  </div>
  <?php
  // code thêm
        if (isset($_POST['btn_add_student'])) {
          $value1 = $_POST['code'];
          $value2 = $_POST['first_name'];
          $value3 = $_POST['last_name'];
          $value4 = $_POST['address'];
          $value5 = $_POST['birth'];
          $value6 = $_POST['home_town'];
          $value7 = $_POST['class_id'];
          if ($_POST['gender'] == 1) {
            $value8 = 'Nam';
          }
          else{
            $value8 = 'Nu';
          }
          if (isset($_POST['code']) && isset($_POST['first_name']) && isset($_POST['last_name']) && isset($_POST['address']) && isset($_POST['birth']) && isset($_POST['home_town']) && isset($_POST['class_id']) && isset($_POST['gender'])
           && !empty($_POST['code']) &&  !empty($_POST['first_name']) && !empty($_POST['last_name']) && !empty($_POST['address']) && !empty($_POST['birth']) && !empty($_POST['home_town']) && !empty($_POST['class_id']) && !empty($_POST['gender'])) {
            $sql = "insert into hocsinh values('$value1','$value2','$value3','$value4','$value5','$value6','$value7',2,'$value8')";
            $db->query($sql);
            echo '<script>alert("Thêm thành công!")</script>';
            echo("<meta http-equiv='refresh' content='1'>");
          }
          else{
            echo '<script>alert("Chưa nhập đủ thông tin học sinh!")</script>';
          }
        }
        // xong code thêm
       
      ?>
      <div class="scroll">
        <table class="edit table" id="tableliststudent">
<!-- 1 -->
      <thead>
        <tr>
          <th>Mã HS</th>
          <th>Họ HS</th> 
          <th>Tên HS</th>
          <th>Địa Chỉ</th>
          <th>Ngày Sinh</th>
          <th>Quê Quán</th>
          <th>Lớp</th>
          <th>Giới Tính</th>
          <th>Edit</th>
          <th>Xoá</th>   
          <th>Xem điểm</th>
        </tr>
      </thead>
      <tbody>
        <?php
            if (mysqli_num_rows($query) > 0) {
              while($result=mysqli_fetch_array($query)){
          ?>
        <tr>
            <td><?php echo $result['MaHS']; ?></td>
            <td><?php echo $result['HoHS']; ?></td>
            <td><?php echo $result['TenHS']; ?></td>
            <td><?php echo $result['DiaChi']; ?></td>
            <td><?php echo $result['NgaySinh']; ?></td>
            <td><?php echo $result['QueQuan']; ?></td>
            <td><?php echo $result['MaLop']; ?></td>
            <td><?php echo $result['GioiTinh']; ?></td>
            <td id="EditRow">
              <a href="javascript:;" data-id="<?php echo $result['MaHS']; ?>" class="editItem">
                <img src="edit.png">
              </a>
            </td>
            <td>
              <a href="javascript:;" data-id="<?php echo $result['MaHS']; ?>" class="delItem">
                <img src="delete.png">
              </a>
            </td>
            <td><a href="diemcanhan.php?id=<?php echo $result['MaHS'] ?>&hk=I">Xem</a></td>
          </tr>
      <?php
        }
      }
      ?>
      </tbody>
      </table>
      <!-- modal edit -->
      <button style="padding: 7px;display:none" type="button" class="btn btn-info btn-sm" data-toggle="modal" id="btnModalEdit" data-target="#myModalEdit">Sửa</button>
      <div class="modal fade" id="myModalEdit" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
      <form method="post">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Sửa học sinh</h4>
        </div>
        <div class="modal-body">
        <div class="form-group">
          <label for="usr1">Mã số học sinh:</label>
          <input type="text" id="usredit1" placeholder="Nhập mã số học sinh" class="form-control" name="code" require readonly>
        </div>
        <div class="row">
        <div class="form-group col-md-4">
          <label for="usredit2">Họ:</label>
          <input type="text" id="usredit2" placeholder="Nhập họ" class="form-control" name="first_name" require>
        </div>
          <div class="form-group col-md-8">
            <label for="usredit3">Tên học sinh:</label>
            <input type="text" id="usredit3" placeholder="Nhập tên học sinh" class="form-control" name="last_name" require>
          </div>
          </div>
          <div class="form-group">
            <label for="usredit4">Địa chỉ:</label>
            <input type="text" id="usredit4" placeholder="Nhập địa chỉ" class="form-control" name="address" require>
          </div>
          <div class="form-group">
            <label for="usredit5">Ngày sinh:</label>
            <input type="date" id="usredit5" class="form-control" name="birth" require>
          </div>
          <div class="form-group">
            <label for="usredit6">Quê quán học sinh:</label>
            <input type="text" id="usredit6" placeholder="Nhập quê quán học sinh" class="form-control" name="home_town" require>
          </div>
          <div class="form-group">
            <label for="sel1">Lớp:</label>
            <?php
            $sql = "SELECT * FROM lop";
            $result = $db->query($sql);
              if (mysqli_num_rows($result) > 0) {
                echo '<select class="form-control" id="seledit1" name="class_id">';
                      while($row = $result->fetch_assoc()){
                          echo "<option value ='".$row['MaLop']."' >Lớp ".$row['TenLop']."</option>";
                      }
              }else{
                echo "Chưa có lớp nào.";
              }
            ?>
            </select>
          </div>
          <div class="form-group row">
            <label for="usredit7" class="col-md-2">Giới tính:</label>
            <div class="col-md-2">
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" class="form-check-input gender1" name="gender" value="1">Nam
              </label>
            </div>
          </div>
          <div class="col-md-2">
          <div class="form-check">
              <label class="form-check-label">
              <input type="radio" class="form-check-input gender2" name="gender" value="2">Nữ
            </label>
          </div>
          </div>
          </div>
        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-primary" id="btn_edit_student" name="btn_edit_student" value="Sửa học sinh">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </form>
      </div>
      
    </div>
  </div>
</article>
</section>
<form method="post" style="display:none">
      <input type="hidden" name="delID" id="delID">
      <input type="submit" name="btndelID" id="btndelID">
</form>
<?php
 // code xoá
  if(isset($_POST['btndelID'])){
    if (isset($_POST['delID'])) {
      $id =$_POST['delID'];
      $query = "delete from hocsinh where MaHS = '$id'";
      $db->query($query);
      echo '<script>alert("Xoá thành công!")</script>';
      echo("<meta http-equiv='refresh' content='1'>");
    }
  }
  // xong code xoá
  // code sửa
  if (isset($_POST['btn_edit_student'])) {
    $value1 = $_POST['code'];
    $value2 = $_POST['first_name'];
    $value3 = $_POST['last_name'];
    $value4 = $_POST['address'];
    $value5 = $_POST['birth'];
    $value6 = $_POST['home_town'];
    $value7 = $_POST['class_id'];
    if ($_POST['gender'] == 1) {
      $value8 = 'Nam';
    }
    else{
      $value8 = 'Nu';
    }
    if (isset($_POST['code']) && isset($_POST['first_name']) && isset($_POST['last_name']) && isset($_POST['address']) && isset($_POST['birth']) && isset($_POST['home_town']) && isset($_POST['class_id']) && isset($_POST['gender'])
     && !empty($_POST['code']) &&  !empty($_POST['first_name']) && !empty($_POST['last_name']) && !empty($_POST['address']) && !empty($_POST['birth']) && !empty($_POST['home_town']) && !empty($_POST['class_id']) && !empty($_POST['gender'])) {
      $sql = "update hocsinh set HoHS = '$value2',TenHS = '$value3',DiaChi='$value4',NgaySinh='$value5',QueQuan='$value6',MaLop='$value7',matk=2,GioiTinh='$value8' where MaHS = '$value1'";
      $db->query($sql);
      echo '<script>alert("Sửa thành công!")</script>';
      echo("<meta http-equiv='refresh' content='1'>");
    }
    else{
      echo '<script>alert("Chưa nhập đủ thông tin học sinh!")</script>';
    }
  }
  // xong code sửa
?>
<div class="footer" style="background-color: gray;text-align: center;color: white;padding: 25px;">
    <p>SỞ GIÁO DỤC & ĐÀO TẠO TỈNH BẮC GIANG</p>
    <p>Email : thptvietyenso1@gmail.com</p>
    <p>Địa chỉ : TT BÍCH ĐỘNG - VIỆT YÊN - BẮC GIANG</p>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
  <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script>
  $(document).ready(function(){
    $('.delItem').click(function(){
      if (confirm("Dữ liệu xoá sẽ không khôi phục được. Bạn có thật sự muốn xoá?")) {
        var del_id = $(this).data('id');
        $('#delID').val(del_id);
        $('#btndelID').click();
      }
      else{}
    });
    $('.editItem').click(function(){
      var table = $('#tableliststudent').DataTable();
      $('#tableliststudent tbody tr').on('click', '#EditRow', function() {
          var data = table.row( this ).data();
          $('#usredit1').val(data[0]);
          $('#usredit2').val(data[1]);
          $('#usredit3').val(data[2]);
          $('#usredit4').val(data[3]);
          $('#usredit5').val(data[4]);
          $('#usredit6').val(data[5]);
          $('#seledit1').val(data[6]);
          if (data[7] == 'Nam') {
            $('.gender1').prop('checked', true);
          }
          else{
            $('.gender2').prop('checked', true);
          }
      });
      $('#btnModalEdit').click();
    });
  });
</script>

</body>
</html>
