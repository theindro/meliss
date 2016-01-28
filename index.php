<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Meliss restoran</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<a href="index.php"><img src="logo.png" alt="" id="logo"></a>
<div id="kast" style="text-align:center;">
<h1>Meliss broneering</h1>

    <form action="insert.php" method="post">
<p>Nimi *</p>
<input name="nimi" type="text">
    <p>Telf nr:</p>
    <input name="telf_nr" type="text">
    <p>E-mail *</p>
    <input name="e_mail" type="text">
    <p>Inimeste arv *</p>
    <input name="inimeste_arv" type="text">
    <p>Kuupäev ja kellaaeg * </p>
    <select name="kuupaev_kellaaeg" id="aeg">
        <option value="value">Vali kuupäev</option>
        <option value="value">19.01.2016 11:00</option>
        <option value="value">19.01.2016 12:00</option>
        <option value="value">19.01.2016 13:00</option>
    </select>
    <br>
    <br>
        <p>Eelroog | Põhiroog | Järelroog</p>
        <select style="margin-right: 30px; width: 40px;" name="eelroogade_arv" id="eelroog">
            <option value="value">--</option>
            <option value="value">1</option>
            <option value="value">2</option>
            <option value="value">3</option>
        </select>
        <select style="width: 40px;" name="pohiroogade_arv" id="eelroog">
            <option value="value">--</option>
            <option value="value">1</option>
            <option value="value">2</option>
            <option value="value">3</option>
        </select>
        <select style="margin-left: 30px; width: 40px;" name="jarelroogade_arv" id="eelroog">
            <option value="value">--</option>
            <option value="value">1</option>
            <option value="value">2</option>
            <option value="value">3</option>
        </select>
        <br>
    <br>
<button class="submit" value="Submit">Sisesta</button>
    </form>
    <br>
    <a style="font-size: 12px; font-family:arial; color:blue; text-decoration:none;" href="login.php">Admin login</a>
</div>
</body>
</html>