<?php

//Archivos de Conexión a la BD...
$conexion = mysqli_connect("localhost", "root", "1234", "bd_carnets");


//Capturamos los datos enviados por POST desde el formulario...
$nombre = $_POST["nombre"]; 
$carrera = $_POST["carrera"]; 
$cuenta = $_POST["cuenta"]; 
$email = $_POST["email"]; 
$fecha = $_POST["fecha"]; 

//Obtener datos del archivo subido....
if ($_FILES["archivo"]) {
    $nombre_base = basename($_FILES["archivo"]["name"]);
    $nombre_final = date("m-d-y")."-". date("H-i-s")."-". $nombre_base;
    $ruta = "archivos/". $nombre_final;
    //Comando para Mover los archivos a la Carpeta Adjunta
    $subirarchivo = move_uploaded_file($_FILES["archivo"]["tmp_name"], $ruta);
    //Condicional para revisar si se  inserto en la BD....
    if ($subirarchivo) {
        $insertarsql = "INSERT INTO informes(nombre, carrera, cuenta, email, fecha, archivo ) values('$nombre', '$carrera',
         '$cuenta', '$email', '$fecha', '$ruta' )";
         $resul = mysqli_query($conexion, $insertarsql);
    } if($resul){
        echo "<script>alert('Datos enviados Correctamente! :D'); window.location='/'</script>"; 
    } else{
        printf("Errormessage: %s\n", mysqli_error($conexion));
    }
    
} else {
    echo "Error al subir archivo!";
   
}
