<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $db = 'VRCTC';
    
    $conn=mysqli_connect($dbhost, $dbuser, $dbpass, $db);

    $usermail = $_POST['usermail'];
    $userpass = mysqli_real_escape_string($conn, $_POST['userpass']);
    $userpass = md5($_POST['userpass']);
    $sql = "SELECT * FROM users WHERE usermail='$usermail' AND userpass='$userpass'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);
    if($usermail == "" && $userpass == ""){
        header('location: ../index.html');
    }
    if($row['usermail'] == $usermail && $row['userpass'] == $userpass){
        session_start();
        $_SESSION['username'] = $row['username'];
        $_SESSION['usermail'] = $row['usermail'];
        header('location: home.php');
    }else{
        header('location: ../index.html');
    }
    if(!isset($_SESSION['username'])){
        header('location: ../index.html');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome <?php echo $_SESSION['username'] ?> - VRCTC</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="img/logo_1.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Questrial&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body style="background-image:url('../img/7.jpg'); background-repeat: no-repeat; background-size: 110%;">
<header class="mb-5">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="../img/35.jpeg" class="img-fluid" height="50" width="50">VRCTC</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="bi bi-list"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="booking.php">Booking</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profile.php">Profile</a>
                </li>
            </ul>
            <div class="d-flex">
                <a href="logout.php"><button class="btn btn-sm btn-secondary">Logout <i class="bi bi-box-arrow-right"></i></button></a>
            </div>
          </div>
        </div>
      </nav>
</header>
<section class="container">
<div class="lead text-center mb-4">Welcome, <?php echo $_SESSION['username']; ?>! to VRCTC</div>
  <div class="container col-md card card-body shadow">
        HOME
  </div>
</section>
<footer>

</footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/validateLogin.js"></script>
</body>
</html>