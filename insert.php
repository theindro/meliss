<?php
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$con =  mysql_connect("localhost", "root" ,"");

// Check connection
if (!$con)
{
    die('Could not connect: ' . mysql_error());
}

mysql_select_db("meliss", $con);

$sql="
INSERT INTO klient (nimi, telf_nr, e_mail)
VALUES ('$_POST[nimi]','$_POST[telf_nr]','$_POST[e_mail]')";

if (!mysql_query($sql,$con))
{
    die('Error: ' . mysql_error());
}
echo "Broneering on edukalt sooritatud! Saate 24h jooksul e-mailile kirja!";

mysql_close($con)
?>