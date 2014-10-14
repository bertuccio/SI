

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../Styles/busqueda.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../Scripts/busqueda.js"></script>

</head>

<body onload="getWidth()">
    

   <?php
   
    $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );                         

    if($_REQUEST['buscaTitulo']){
         
      $flag = 0;
      $titulo=$_REQUEST['titulo'];               
      $sqlLibros="SELECT DISTINCT titulo, isbn FROM libro WHERE titulo LIKE '%" . $titulo . "%' ORDER BY titulo asc;";  
      
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
               $tituloLibro=$obj->titulo;
               $isbnLibro=$obj->isbn;
               echo "<tr><td>".$tituloLibro . "</td>
                     <td>
                        <form action=\"infoLibro.php\" method=\"post\" id=\"info\" name=\"info\" target=\"_parent\">
                            <input type=\"hidden\" id=\"isbn\" name=\"isbn\" value=\"". $isbnLibro . "\">
                            <input type=\"submit\" id=\"info\" name=\"info\" class=\"button\" value=\"Info\"></td>
                        </form>
                    </td>
                   </tr>";
               
       }
       echo "</center></table>";
       if ($flag == 0) {
          echo "<center><h3>No se han encontrado resultados para la busqueda</h3></center>";
      }
    }
?>


</body>

</html>