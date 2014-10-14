<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title></title>
    </head>
    <body>
       <?php
       
           try {
               $db = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );
               /*** use the database connection ***/
               
               if($_REQUEST['envia']=="Enviar"){
                   $isbn=$_REQUEST['isbn'];
                   try {  
                    
                    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    $db->beginTransaction();
                    
                    $sql="SELECT * FROM generoLibro WHERE isbn= :isbnLibro";
                    $stmt = $db->prepare($sql);
                    $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if(!$result){

                        echo"El libro no esta en la tabla generoLibro <br />";
                    }
                    else{

                         echo "Tabla generoLibro antes de DELETE <br /> <br />";
                         foreach($result as $row) {
                             echo"{$row['isbn']} -- {$row['genero']} <br />";
                         }
                         $sql="DELETE FROM generoLibro where isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();

                        $sql="SELECT * FROM generoLibro WHERE isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();
                        $result = $stmt->fetchAll();
                        if(!$result){

                            echo " <br /> El libro ya no existe en la tabla generoLibro <br /> <br />";
                        }   
                    }
                    $sql="SELECT * FROM autorLibro WHERE isbn= :isbnLibro";
                    $stmt = $db->prepare($sql);
                    $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if(!$result){

                        echo"El libro no esta en la tabla autorLibro <br />";
                    }
                    else{

                         echo "Tabla autorLibro antes de DELETE <br /> <br />";
                         foreach($result as $row) {
                             echo"{$row['isbn']} -- {$row['autor']} <br />";
                         }
                         $sql="DELETE FROM autorLibro where isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();

                        $sql="SELECT * FROM autorLibro WHERE isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();
                        $result = $stmt->fetchAll();
                        if(!$result){

                            echo " <br /> El libro ya no existe en la tabla autorLibro <br /> <br />";
                        }   
                    }
                    $sql="SELECT * FROM correccion WHERE isbn= :isbnLibro";
                    $stmt = $db->prepare($sql);
                    $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if(!$result){

                        echo"El libro no esta en la tabla correccion <br />";
                    }
                    else{

                         echo "Tabla correccion antes de DELETE <br /> <br />";
                         foreach($result as $row) {
                             echo"{$row['isbn']} -- {$row['n_pagina']} <br />";
                         }
                         $sql="DELETE FROM correccion where isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();

                        $sql="SELECT * FROM correccion WHERE isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();
                        $result = $stmt->fetchAll();
                        if(!$result){

                            echo " <br /> El libro ya no existe en la tabla correccion <br /> <br />";
                        }   
                    }
                    
                    $sql="SELECT * FROM pagina WHERE isbn= :isbnLibro";
                    $stmt = $db->prepare($sql);
                    $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if(!$result){

                        echo"El libro no esta en la tabla pagina <br />";
                    }
                    else{

                         echo "Tabla pagina antes de DELETE <br /> <br />";
                         foreach($result as $row) {
                             echo"{$row['isbn']} -- {$row['n_pagina']} -- {$row['id_fase']} <br />";
                         }
                         $sql="DELETE FROM pagina where isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();

                        $sql="SELECT * FROM pagina WHERE isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();
                        $result = $stmt->fetchAll();
                        if(!$result){

                            echo " <br /> El libro ya no existe en la tabla pagina <br /> <br />";
                        }   
                    }  
                    
                    $sql="SELECT * FROM proyecto WHERE isbn= :isbnLibro";
                    $stmt = $db->prepare($sql);
                    $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if(!$result){

                        echo"El libro no esta en la tabla proyecto <br />";
                    }
                    else{

                         echo "Tabla proyecto antes de DELETE <br /> <br />";
                         foreach($result as $row) {
                             echo"{$row['isbn']} -- {$row['fecha']} <br />";
                         }
                         $sql="DELETE FROM proyecto where isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();

                        $sql="SELECT * FROM proyecto WHERE isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();
                        $result = $stmt->fetchAll();
                        if(!$result){

                            echo " <br /> El libro ya no existe en la tabla proyecto <br /> <br />";
                        }   
                    } 
                    
                    
                    $sql="SELECT * FROM libro WHERE isbn= :isbnLibro";
                    $stmt = $db->prepare($sql);
                    $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if(!$result){

                        echo"El libro no esta en la tabla libro <br />";
                    }
                    else{

                         echo "Tabla libro antes de DELETE <br /> <br />";
                         foreach($result as $row) {
                             echo"{$row['isbn']} -- {$row['titulo']} <br />";
                         }
                         $sql="DELETE FROM libro where isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();

                        $sql="SELECT * FROM libro WHERE isbn= :isbnLibro";
                        $stmt = $db->prepare($sql);
                        $stmt->bindParam(':isbnLibro', $isbn, PDO::PARAM_STR);
                        $stmt->execute();
                        $result = $stmt->fetchAll();
                        if(!$result){

                            echo " <br /> El libro ya no existe en la tabla libro <br /> <br />";
                        }   
                    }  
                     

                       
                    
                    $db->commit();


                   } catch (Exception $e) {
                        $dbh->rollBack();
                        echo "Failed: " . $e->getMessage();
                   }
               }
               
           }
          
           catch(PDOException $e) {
          
                die("Unable to connect: " . $e->getMessage());
           }


           

       ?>
        <FORM action="borraLibro.php" method="get">
    <P>
    <LABEL for="Libro">ISBN: </LABEL>
              <INPUT type="text" name="isbn"><BR>
    <INPUT name="envia" type="submit" value="Enviar"> <INPUT type="reset">
    </P>
    </FORM>
        
        
    </body>
</html>
