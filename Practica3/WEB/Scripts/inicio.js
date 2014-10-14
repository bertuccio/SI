  var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre",        "Diciembre");

  var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");

  var f=new Date();


  var id,pause=0,position=0;
  function scorrevole() {
    
    var i,k,msg="      " + diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear()+
    "      Proyectos terminados: 1       Proyectos en curso: 2       ";

    k=(100/msg.length)+1;
    for(i=0;i<=k;i++) msg+=" "+msg;
    document.form2.scorrevole.value=msg.substring(position,position+100);
    if(position++==100) position=0;
    id=setTimeout("scorrevole()",100); 
    
  }


   