<%-- 
    Document   : customerTeamPage
    Created on : 17 mai 2016, 20:30:01
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <h2>Equipe Bordeaux</h2><br>
        <h3 style="margin-left: 30px">Sujet :</h3>
        <div class="alert alert-danger alert-dismissable fade in" style="width: 94%; margin-left: 30px">
            <h4><i class="icon icon-times-circle icon-lg"></i>Amélioration de la gestion des projets de spécification de Génie Logiciel</h4>
            <textarea name="textarea" rows="10" cols="163">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.

Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.</textarea>  
            <br>
            </div><br>
            <h3 style="margin-left: 30px">Réunion :</h3>
            <button id="add" class="btn btn-primary" style="margin-left: 30px">Ajouter une réunion</button>

            <div class="container">       
  <table class="table table-striped">
    <thead>
      <tr>
        <th class="firstColumn">Date de la réunion</th>
        <th>Durée</th>
        <th>Commentaires</th>
        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Valider</button></th>
        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Supprimer</button></th>
      </tr>
    </thead>
  </table>
            </div>
 
<script type="text/javascript">
$('#add').on('click', function() {    
    $('table').append( 
        [
            '<tr>',
                '<td><input class="tableau" type="date" name="date"></td>',
                '<td><input class="tableau" type="text" name="duree"></td>',
                '<td><input class="tableau" type="textarea" name="dcomm"></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button></td>',
                '<td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button></td>', 
            '</tr>'  
        ].join('') //un seul append pour limiter les manipulations directes du DOM
    );  
});
 
$('table').on('click', '#remove', function() {
   var $this = $(this);
 
   $this.closest('tr').remove();   
});

</script>
            <h3 style="margin-left: 30px">Fonctionnalités attendues par le professeur :</h3>
            <h3 style="margin-left: 30px">Fonctionnalités proposées par l'équipe :</h3>
            <h3 style="margin-left: 30px">Trombinoscope :</h3>
    </body>
</html>
