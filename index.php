
</body>
</html>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<a href="index.php"><img src="logo.png" alt="" id="logo"></a>
<div id="kast" style="text-align:center;">
<h1>Meliss broneering</h1>

    <form action="insert.php" method="post">
<p>Nimi</p>
<input name="nimi" type="text">
    <p>Telf nr:</p>
    <input name="telf_nr" type="text">
    <p>E-mail</p>
    <input name="e_mail" type="text">
    <p>Inimeste arv</p>
    <input type="text">
    <p>Kuupäev ja kellaaeg</p>
    <select name="aeg" id="aeg">
        <option value="value">Vali kuupäev</option>
        <option value="value">18.01.2016 11:00</option>
        <option value="value">18.01.2016 12:00</option>
        <option value="value">18.01.2016 13:00</option>
    </select>
    <br>
    <br>
    <br>
<button class="submit">Sisesta</button>
    </form>
    <br>
    <br>
    <a style="font-size: 12px; font-family:arial; color:blue; text-decoration:none;" href="admin.php">Admin login</a>
</div>
</body>
</html>