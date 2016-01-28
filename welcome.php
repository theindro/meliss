<?php
session_start();
if(!isset($_SESSION['myusername'])){
    header("Location:login.php");
}
?>
<html">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<a href="index.php"><img src="logo.png" alt="" id="logo"></a>
<div id="kast" style="width: 800px; height: auto;">
<h1 style="font-size: 20px;">Tere tulemast <?php echo $_SESSION['myusername']; ?> <a style="color:blue; float:right;" href="logout.php">Logi Välja</a>
    <br>
    <br>

    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "meliss";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT klient_id, nimi, telf_nr, e_mail FROM klient";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table>
<tr>
<th>ID</th>
<th>Nimi</th>
<th>Telf_nr</th>
<th>E-mail</th>
<th>Inimeste arv</th>
<th>Kuupäev ja kellaaeg</th>
<th>Eelroogade arv</th>
<th>Põhiroogade arv</th>
<th>Järelroogade arv</th>
</tr>";
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr>
                <td>" . $row["klient_id"]. " </td>
                <td> ".$row["nimi"]."</td>
                <td> " . $row["telf_nr"]. " </td>
                <td> " . $row["e_mail"]. "</td>
                </tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }
    $conn->close();
    ?>

</div>
</body>
</html>

