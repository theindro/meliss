<?php
include("config.php");
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // username and password sent from form

    $myusername = mysqli_real_escape_string($db,$_POST['username']);
    $mypassword = mysqli_real_escape_string($db,$_POST['password']);

    $sql = "SELECT id FROM adminn WHERE username = '$myusername' and password = '$mypassword'";
    $result = mysqli_query($db,$sql);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    $active = $row['id'];

    $count = mysqli_num_rows($result);

    // If result matched $myusername and $mypassword, table row must be 1 row

    if($count == 1) {
        session_register("myusername");
        $_SESSION['login_user'] = $myusername;

        header("location: welcome.php");
    }else {
        $error = "Your Login Name or Password is invalid";
    }
}
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<a href="index.php"><img src="logo.png" alt="" id="logo"></a>
<div id="kast" style="text-align:center;">
    <form action = "" method = "post">
    <h1>Admin Login</h1>
    <p>Kasutajanimi</p>
    <input name="username" type="text" placeholder="kasutajanimi">
    <p>Parool</p>
    <input name="password" type="password" placeholder="parool">
    <br>
    <br>
        <input type = "submit" value = " Submit "
    <button type="submit" value="submit" class="submit"></button>
    </form>


</div>
</body>
</html>