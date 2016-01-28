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

$sql= "BEGIN;
INSERT INTO klient (nimi, telf_nr, e_mail)
VALUES ('$_POST[nimi]','$_POST[telf_nr]','$_POST[e_mail]');
INSERT INTO broneering (inimeste_arv, kuupaev_kellaaeg)
    VALUES ('$_POST[inimeste_arv]','$_POST[kuupaev_kellaaeg]');

INSERT INTO menu (eelroogade_arv, pohiroogade_arv, jarelroogade_arv)
    VALUES ('$_POST[eelroogade_arv]','$_POST[pohiroogade_arv]','$_POST[jarelroogade_arv]');
COMMIT";

if (!mysql_query($sql,$con))
{
    die('Error: ' . mysql_error());
}
echo "Broneering on edukalt sooritatud! Saate 24h jooksul e-mailile kirja!";

mysql_close($con)
?>