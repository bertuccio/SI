<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Corregir</title>
<link href="../../Styles/buscar.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/inicio.js"></script>
</head>

<body onload="scorrevole()">
   <?php


            // Esta cookie dura un dia. 24 h = 86400 segundos
            setcookie("ultimaTarea", "corregir.php", time() + 86400);
    
            session_start();
            
            if (($_REQUEST['terminado']) || ($_REQUEST['terminado2'])) {
                
                $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );
                
                $sqlCorreccion="SELECT * FROM correccion, usuario WHERE usuario.login='" . $_SESSION['user'] . "' 
                    and correccion.corrector = usuario.id_usuario and correccion.n_pagina = " 
                    . $_REQUEST[npagina] . " and correccion.id_fase = '" . $_REQUEST['fase'] . "' and 
                        correccion.isbn = '" . $_REQUEST['isbn'] . "';";
                
                $stmt=$conn->query($sqlCorreccion);
                $obj=$stmt->fetch(PDO::FETCH_OBJ);
                
                if (!$obj) {
                    
                    $query ="INSERT INTO correccion (isbn, n_pagina, fecha_fin, id_fase, corrector) VALUES('{$_REQUEST['isbn']}', {$_REQUEST['npagina']} 
                         , '2011-10-09 14:45:51.596608+02', '{$_REQUEST['fase']}',  {$_REQUEST['corrector']});";
                    $conn->exec($query);
                }
                
                else {
                    $query ="UPDATE correccion SET fecha_fin='2011-10-09 14:45:51.596608+02' WHERE usuario.login='" . $_SESSION['user'] . "' 
                    and correccion.corrector = usuario.id_usuario and correccion.n_pagina = " 
                    . $_REQUEST['npagina'] . " and correccion.id_fase = '" . $_REQUEST['fase'] . "' and 
                        correccion.isbn = '" . $_REQUEST['isbn'] . "';";
                    $conn->exec($query);
                }
            }
            
            
            if ($_REQUEST['corregir']) {
                
                $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );
                
                $sqlCorreccion="SELECT * FROM correccion, usuario WHERE usuario.login='" . $_SESSION['user'] . "' 
                    and correccion.corrector = usuario.id_usuario and correccion.n_pagina = " 
                    . $_REQUEST['npagina'] . " and correccion.id_fase = '" . $_REQUEST['fase'] . "' and 
                        correccion.isbn = '" . $_REQUEST['isbn'] . "';";
                
                $stmt=$conn->query($sqlCorreccion);
                $obj=$stmt->fetch(PDO::FETCH_OBJ);
                
                if (!$obj) {
                    
                    $query ="INSERT INTO correccion (isbn, n_pagina, fecha_fin, id_fase, corrector) VALUES('" . $_REQUEST['isbn'] . "', " . $_REQUEST['npagina'] . 
                         ", null, '" . $_REQUEST['fase'] . "', " . $_REQUEST['corrector'] . ");";
                    $conn->exec($query);
                }
                
                
            }


        ?>
   <div id="cuerpo">
    <div id="cabecera">
      <img src="../../Images/logo.png" width="798" height="100" />
    </div>
    <div id="msuperior">
      
          <a href="inicio.php">Inicio</a>
          <a href="buscar.php">Buscar Libro</a>
          <a>Corregir Pagina</a>
          <a href="../../index.php">Desconexi&oacute;n</a>
       
    </div>
    <center> 
        <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="80" /></p></form>
    </center>
    <div id="formularios">
    <center>
      <form name="busqueda_titulo" method="post" action="busquedapagina.php" target="iframe">
          <label for="titulo">Titulo: </label>
            <input id="titulo" type="text" value="Buscar..." maxlength="100" size="50" style="color:#999"  name="titulo" 
            autocomplete="off" onfocus="if (this.value == 'Buscar...') {this.value = ''; this.style.color='#000'}" 
            onblur="if (this.value == '') {this.value = 'Buscar...';this.style.color='#999'}" />
            <input id="btitulo" type="submit" value="Buscar" name="buscaTitulo" />        
        </form>
    </center>
    </div>
    <div id="busqueda">
      <center>
        <iframe name="iframe" id="iframe" width="800px" height="300px" src="busquedapagina.php">
        
        </iframe>
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