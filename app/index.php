<link rel="stylesheet" href="styles.css">
<?php
$max_retries = 10;
$retry_interval = 2;
$connected = false;

for ($i = 0; $i < $max_retries; $i++) {
    $conexion = new mysqli("server-mysql", "root", "admin123", "app_db");

    if ($conexion->connect_error) {
        echo "Intentando conectar a MySQL... (intento " . ($i + 1) . ")<br>";
        sleep($retry_interval);
    } else {
        $connected = true;
        break;
    }
}

if (!$connected) {
    die("No se pudo conectar a MySQL después de $max_retries intentos.");
}

$resultado = $conexion->query("SELECT * FROM productos");

echo "<h1>Catálogo</h1><ul>";
while ($fila = $resultado->fetch_assoc()) {
    echo "<li>{$fila['nombre']} - {$fila['precio']}</li>";
}
echo "</ul>";

$conexion->close();
?>
