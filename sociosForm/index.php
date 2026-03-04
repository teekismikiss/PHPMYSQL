<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <main>
<h1>Socios</h1>
<a href="formulario.php">Añadir nuevo Socio</a>
<br>
<?php
function printR2($array){
        echo '<pre><code>';
        print_r($array);
        echo '</pre></code>';
    }

    //cargar json
    $json=file_get_contents('socios.json');

    //convertir json->php
$socios=json_decode($json,true);

//comprobar
print_r($socios);




?>
    </main>

</body>
</html>