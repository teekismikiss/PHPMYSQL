<?php
session_start();

// user session null or different than pepa
if (!isset($_SESSION['usuario']) || $_SESSION['usuario']!=='Pepa'){
    header("Location:no_puedes_pasar.php");
    exit();//detener el script
}
?>

<h1>PROHIBIDO</h1>

<a href="index.php">⬅ Volver al Inicio </a>