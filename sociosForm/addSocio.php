<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<main>
<h1>Socios agregados</h1>

<?php
//obtener info desde formulario GET
echo $socio=$_GET['socio'];
echo $rol=$_GET['rol'];

//JSON

//cargar json
$json=file_get_contents ('socios.json');
//decodificamos json -> array php
$socios=json_decode($json,true);

//revisar lectura
print_r($socios);

//añadir elementos del formulario (GET) al array php
// Crear nuevo socio como array asociativo
$nuevoSocio = [
    "socio" => $socio,
    "rol"   => $rol
];

// Añadir al array
$socios["socios"][] = $nuevoSocio;

// condificar el array php a formato JSON
$json2=json_encode($socios, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);

// guardar JSON
file_put_contents('socios.json',$json2);    





?>



</main>
    
</body>
</html>