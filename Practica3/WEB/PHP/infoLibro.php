<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Buscar</title>
<link href="../Styles/infolibro.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../Scripts/inicio.js"></script>
</head>

<body onload="scorrevole()">
   <?php


            // Esta cookie dura un dia. 24 h = 86400 segundos
            setcookie("ultimaTarea", "buscar.php", time() + 86400);
    
            session_start();
            


  

        ?>
   <div id="cuerpo">
    <div id="cabecera">
      <img src="../Images/logo.png" width="798" height="100" />
    </div>
    <div id="msuperior">
      
          <a href="./corrector/inicio.php">Inicio</a>
          <a href="./corrector/buscar.php">Buscar Libro</a>
          <a href="./corrector/corregir.php">Corregir Pagina</a>
          <a href="../index.php">Desconexi&oacute;n</a>
       
    </div>
    <center> 
        <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="80" /></p></form>
    </center>
    <div id="formularios">
    
        <?php 
            if ($_REQUEST['info']) {
                
  
                $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );
                
                $sqlLibros="SELECT * FROM libro WHERE isbn='" . $_REQUEST['isbn'] . "';";      
                $stmt=$conn->query($sqlLibros);
                $obj=$stmt->fetch(PDO::FETCH_OBJ);
            
                $isbn = $obj->isbn;
                $titulo = $obj->titulo;
                $idioma = $obj->idioma;
                $fecha = $obj->fecha;
                $uploader = $obj->uploader;
                
                echo "<center><table>";
                echo "<tr><td><h3>ISBN: </h3></td><td><p>". $isbn ."</p></td></tr>";
                echo "<tr><td><h3>TITULO: </h3></td><td><p>". $titulo ."</p></td></tr>";
                echo "<tr><td><h3>IDIOMA: </h3></td><td><p>". $idioma ."</p></td></tr>";
                echo "<tr><td><h3>FECHA: </h3></td><td><p>". $fecha ."</p></td></tr>";
                echo "<tr><td><h3>UPLOADER: </h3></td><td><p>". $uploader ."</p></td></tr>";
                echo "</table></center>";
                
                
            }
       ?>
    </div>
    <div id="pie">
      <hr width="100%" color="#DDDDDD" size="1px" noshade="noshade" style="border-color:#CCC" />
      <p>
        <a href="mailto:christian.ramos@estudiante.uam.es">Contacta con nosotros</a> &nbsp;|&nbsp; 
        <a href="../../condiciones.html">Condiciones de uso</a> &nbsp;|&nbsp; 
        <a href="../../info.html">¿Qui&eacute;nes somos?</a> 
      </p>
      <p style="font-size:16px; color:#000;">©2011 Proyecto Gutenberg</p>
    </div>
  </div>
</body>
</html>
