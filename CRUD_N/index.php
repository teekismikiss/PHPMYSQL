<?php
//Datos de la conexión
const SERV = "localhost";
const USER = "root";
const PASS = "root";
const DBNM = "local";

// Crear conexión
$conn = new mysqli(SERV, USER, PASS, DBNM);
// Comprobar conexión
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//Consulta:

//Mostrar toda
$sql = "SELECT * FROM productos_pasteleria";

//CRUD

///// READ
// Mostrar solo una (ficha.php)
// $sql = "SELECT * FROM productos_pasteleria where id=1";


/////// DELETE
// Borrar pastel (borrar.php)
// $sql = "DELETE FROM productos_pasteleria where id=1";


//////// UPDATE
/* Editar (editar.php)
    $sql = "UPDATE `productos_pasteleria` SET
    `nombre` = 'Milhojas de mil Cremas',
    `descripcion` = 'Capas crujientes de hojaldre con crema pastelera con arandanos',
    `categoria` = 'Pasteles',
    `precio` = '3.80',
    `foto` = 'milhojas.jpg',
    `ingredientes` = 'Harina, mantequilla, leche, azúcar, huevos',
    `alergenos` = 'Gluten,Huevo,Leche,Lactosa',
    `disponible` = '1'
    WHERE `id` = '5';";
*/


//////// CREATE
/* Crear nuevo registro / Nuevo pastel (crear.php)
$sql="INSERT INTO `productos_pasteleria` (`nombre`, `descripcion`, `categoria`, `precio`, `foto`, `ingredientes`, `alergenos`, `disponible`, `fecha_creacion`)
VALUES ('Café con pastas', 'Café con pastelitos servido en bandeja de multiples pisos británica', 'Tartas', '15', NULL, NULL, '', '1', now());";

*/



// Ejecutar Consulta SQL
$result = $conn->query($sql);

//Array donde almacenaremos los datos de la consulta
$datos = [];

// Recorrer consulta y meter los dtos en el array
if ($result->num_rows > 0) {
    // Recorre consultas y lo mete limpio dentro de un array
    while ($fila = $result->fetch_assoc()) {
        $datos[] = $fila;
    }
} else {
    echo "No hay pastelitos";
}

//Cerrar conexión
$conn->close();
?>

<?php  // Testeo
    /*
    echo '<pre>';
    print_r($datos);
    echo '</pre>';
    */
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <nav>
        <ul>
            <li>
                <a href="index.php">Inicio</a>
            </li>
        </ul>
    </nav>
</header>

<ul class="pastel">
    

<?php
    foreach($datos as $pastel):
    ?>

    <li>
        <p>id: <?= $pastel['id']?></p>
        <h2><?= $pastel['nombre']?></h2>
        <p><?= $pastel['descripcion']?></p>
       <p><?= $pastel['categoria']?></p>
       <p><?= $pastel['precio']?></p>
       <p><?= $pastel['foto']?></p>
       <p><?= $pastel['ingredientes']?></p>
       <p><?= $pastel['alergenos']?></p>
       <p><?= $pastel['disponible']?></p>
       <p><?= $pastel['fecha_creacion']?></p>
       <a href="ficha.php?id=<?=$pastel['id']?>">Ver ficha</a>
       <a href="editar.php?id=<?=$pastel['id']?>">Editar</a>
       <a href="borrar.php?id=<?=$pastel['id']?>">Borrar</a>
    </li>
    
<? endforeach; ?>

</ul>

<footer>
    <p>&copy; Pastelería Nadine</p>
</footer>

</body>
</html>




