<?php
    /*
    * Functiones  que luego se deberían llevar a globales (functions.php)
    */

function crearSlug($texto) {
    $texto = strtolower($texto);
    $texto = iconv('UTF-8', 'ASCII//TRANSLIT', $texto);
    $texto = preg_replace('/[^a-z0-9]+/', '_', $texto);
    $texto = trim($texto, '-');
    return $texto;
}

//echo crearSlug("Hola Mundo Ejemplo!");
// Hola_Mundo_Ejemplo!

?>
