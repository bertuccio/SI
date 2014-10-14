

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../../Styles/busqueda.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/busqueda.js"></script>

</head>

<body onload="getWidth()">
    

   <?php
  

   session_start();
   
    $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );                         

    if($_REQUEST['buscaTitulo']){
         
      $flag = 0;
      $titulo=$_REQUEST['titulo'];               
      $sqlLibros="SELECT DISTINCT titulo, libro.isbn FROM libro, proyecto WHERE titulo LIKE '%" . $titulo . "%' and  
          proyecto.isbn = libro.isbn and proyecto.id_fase != 'FI' ORDER BY titulo asc;";  
      
       $stmt=$conn->query($sqlLibros);
       echo"<center>
            <table>
                <tr>
                    <th id=\"titulo\">
                      <button onclick=\"reduce_a()\">-</button>
                      Titulo
                      <button onclick=\"aumenta_a()\">+</button>
                    </th>
                </tr>";  
       while ($obj=$stmt->fetch(PDO::FETCH_OBJ)){
    
               $flag = 1;
               $isbnLibro=$obj->isbn;
               $tituloLibro=$obj->titulo;
               echo "<tr><td>".$tituloLibro . "</td>
                    <td>
                        <form action=\"corregir_pagina.php\" target=\"_parent\">
                            <input type=\"hidden\" id=\"isbn\" name=\"isbn\" value=\"". $isbnLibro . "\">
                            <input type=\"submit\" id=\"corregir\" name=\"corregir\" class=\"button\" value=\"Corregir\"></td>
                        </form>
                    </td>
                   </tr>";
              
               
       }
       echo "</center></table>";
       if ($flag == 0) {
          echo "<center><h3>No se han encontrado resultados para la busqueda</h3></center>";
      }
    }
    else {
        
        $sqlUsuario = "SELECT id_usuario FROM usuario WHERE login='{$_SESSION['user']}';";
        $stmt=$conn->query($sqlUsuario);
        $obj = $stmt->fetch(PDO::FETCH_OBJ);
        $usuario = $obj->id_usuario;
  
        $sqlLibros="SELECT * from damePaginasACorregir({$usuario});";
        $stmt=$conn->query($sqlLibros);
        echo '<table>';
        while ($obj=$stmt->fetch(PDO::FETCH_OBJ)) {
            
            $sqlLibro = "SELECT titulo FROM libro WHERE isbn = '{$obj->isbn}';";
            $stmt1=$conn->query($sqlLibro);
            $libro = $stmt1->fetch(PDO::FETCH_OBJ);
            $isbnLibro=$obj->isbn;
            $titulo = $libro->titulo;
            echo "<tr><td>". $titulo . "</td>
                <td>
                    <form action=\"corregir_pagina.php\" target=\"_parent\">
                        <input type=\"hidden\" id=\"isbn\" name=\"isbn\" value=\"". $isbnLibro . "\">
                        <input type=\"submit\" id=\"corregir\" name=\"corregir\" class=\"button\" value=\"Corregir\"></td>
                    </form>
                </td>
               </tr>";
        }
        echo '</table>';
                
        
        
    }
     ?>


</body>

</html>
