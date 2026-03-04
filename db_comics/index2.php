<?php include "header.php"; ?>

<?
/* 1. CONEXIÓN CON LA BASE DE DATOS */

// valores de conexión con la Base de Datos (BBDD):
const SERV = "localhost"; // Servidor
const USER = "root";      // Nombre de Usuario
const PASS = "root";      // Contraseña
const DBNM = "comics";     // Nombre de la base de datos

// Conectarse a la BBDD ó Crear Conexión:
$conn = new mysqli(SERV, USER, PASS, DBNM);

// Fuerza la codificación UTF-8 por si la base de datos no está en UTF-8
// esto evita que salgan caracteres raros como �
$conn->set_charset("utf8mb4");

// Comprobar Conexion
if ($conn->connect_error) {
    die("La conexión ha fallado: " . $conn->connect_error);
}



/*      2. CONSULTA SQL                 */

// almacenamos la consulta en una variable:
$sql = "SELECT * FROM tipos_comic ";

// Ejecutamos la consulta y la almacenamos en $result
$result = $conn->query($sql);


/*   3. MOSTRAMOS LOS RESULTADOS DE LA CONSULTA   */

// Si los resultados de la consulta dan un numero de filas mayor a 0 (si hay datos)
if ($result->num_rows > 0):

    // Muestra cada dato de uno en uno (muestra cada fila)
    // Usando un bucle While:
    echo "<ul class='lista'>";
    while ($row = $result->fetch_assoc()):
    ?>

        <li>
        <!--    <a href="info.php?id=1"> -->
            <a href="info2.php?id=<?php echo $row['id'];?>">
                <h3><?php echo $row['nombre'];?></h3>
                <p><?php echo $row['descripcion'];?></p>
            </a>
            <!-- a -->
        </li>
    
 
    <? endwhile; ?>
    
</ul>

<?php
    
// si no, muestra el texto de que no hay resultados
else: ?>
    <p>0 resultados</p>
<?php
endif;

// Cierra la conexión:
$conn->close();
?>

<? include "footer.php"; ?>