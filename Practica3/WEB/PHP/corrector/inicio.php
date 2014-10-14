<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Inicio</title>
<link href="../../Styles/inicio.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/inicio.js"></script>
</head>

<body onload="scorrevole()">
    <?php
            
            session_start();
            
            $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" ); 
            
            
            
   
    ?>
   <div id="cuerpo">
    <div id="cabecera">
      <img src="../../Images/logo.png" width="798" height="100" />
    </div>
    <div id="msuperior">   
      <a>Inicio</a>
      <a href="buscar.php">Buscar Libro</a>
      <a href="corregir.php">Corregir Pagina</a>
      <a href="../../index.php">Desconexi&oacute;n</a>    
    </div>
    <center> 
        <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="80" /></p></form>
    </center>
    <div id="bienvenida">
        <? echo"<tr><td><h2>Bienvenido {$_SESSION['user']}!</h2></td></tr>";
         
        ?>
    </div>
    <div id="contenido">
        <center><h3>Ultimos libros trabajados</h3>
      <table>
      <?php
       $sqlLibrosPendientes="SELECT DISTINCT isbn FROM correccion, usuario WHERE (correccion.fecha_fin IS NULL or correccion.id_fase != 'FI') and usuario.login = '" . $_SESSION['user']  
                                    ."' and correccion.corrector = usuario.id_usuario GROUP BY isbn ORDER BY isbn;";
       $stmt=$conn->query($sqlLibrosPendientes);
       while ($obj=$stmt->fetch(PDO::FETCH_OBJ)){
               $isbnLibro=$obj->isbn;
               $sqlBuscaTituloLibro="SELECT titulo, isbn FROM libro WHERE isbn= :isbnLibro";
               $stmt2= $conn->prepare($sqlBuscaTituloLibro);
               $stmt2->bindParam(':isbnLibro', $isbnLibro, PDO::PARAM_STR);
               $stmt2->execute();
               $obj=$stmt2->fetch(PDO::FETCH_OBJ);
               $tituloLibro=$obj->titulo;
               echo "<tr>
                        <td>" .$tituloLibro . "</td>
                        <td>
                            <form action=\"../infoLibro.php\" method=\"post\" id=\"info\" name=\"info\">
                                <input type=\"hidden\" id=\"isbn\" name=\"isbn\" value=\"". $isbnLibro . "\">
                                <input type=\"submit\" id=\"info\" name=\"info\" value=\"Info\"></td>
                            </form>
                        </td>
                        
                     </tr>";
       }
       
       
      ?> 
      </table>
      </center>
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