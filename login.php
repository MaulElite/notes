<?php 
  require_once('database.php');
  session_start();

  if (isset($_POST['masuk'])) {
    if (cek_login($_POST['username'], $_POST['password'])) {
      $_SESSION ['username'] = $username;
      $_SESSION ['status'] = "login";
      header("location:home.php");
    } else {
      header ("location:login.php?msg=gagal");
    }
  }
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>notes</title>
    <style>
      body {
	background-image: url('img/bg.jpg');
 	background-repeat: no-repeat;
  background-size: cover;
}
   </style>
  </head>
  <body>
   <div class="container">
       <div class="row pt-5">
           <div class="col-md-12">
               
               <div class="card" height="50" width="50">
  <div class="card-header">
<center class="text-primary"><h3>NOTES LOGIN</h3></center>
  </div>
  <div class="card-body">
  <form action="" method="POST">
  <div class="form-group">
    <label for="exampleInputEmail1"></label>
    <input type="text" name="username" class="form-control" aria-describedby="emailHelp" placeholder="username">
  </div>
  <div class="form-group">
    <label for="" ></label>
    <input type="password" name="password "class="form-control" placeholder="Password">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" >
    <label class="form-check-label" for="exampleCheck1">Remember me</label>
  </div>
  <h4><input type="submit" name="masuk" value="LOGIN" class="btn btn-primary"></h4>
</form>
  </div>
</div>
               
           </div>
       </div>
   </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>