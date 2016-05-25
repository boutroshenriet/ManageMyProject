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

        <title>Equipe Bordeaux</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <h2>Equipe Bordeaux</h2><br>
        <h3 style="margin-left: 30px">Sujet :</h3>
        <div class="alert alert-danger alert-dismissable fade in" style="width: 94%; margin-left: 30px">
            <h4><i class="icon icon-times-circle icon-lg"></i>Amélioration de la gestion des projets de spécification de Génie Logiciel</h4>
            <textarea name="textarea" rows="10" cols="160">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.

Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.</textarea>  
            <br>
        </div><br>
        <h3 style="margin-left: 30px">Réunions :</h3>
        <button id="add" class="btn btn-primary" style="margin-left: 30px">Ajouter une réunion</button>

        <div class="container">
            <table class="table table-striped" id="reu" style='width:99%'>
                <thead>
                    <tr>
                        <th class="firstColumn">Date de la réunion</th>
                        <th class="firstColumn">Durée</th>
                        <th>Commentaires</th>
                        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Valider</button></th>
                        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Supprimer</button></th>
                    </tr>
                </thead>
                <tr>
                    <td><input class="tableau" type="date" name="date"></td>
                    <td><div id="timer">00 : 00</div></td>
                    <td><textarea id="text1" class="tableau" name="dcomm"></textarea></td>
                    <td class="tableButton"><button id="" class="btn btn-primary">Valider</button><button style="margin-top:20px" id="play" class="btn btn-success">Début</button></td>
                    <td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button><button style="margin-top:20px" id="pause" class="btn btn-danger">Fin</button></td>
                </tr>
            </table>
        </div>

        <script src="addMeeting.js" type="text/javascript"></script>
        <h3 style="margin-left: 30px">Fonctionnalités attendues par le professeur :</h3>

        <button id="add2" class="btn btn-primary" style="margin-left: 30px">Ajouter une fonctionnalité</button>

  <!-- Trigger the modal with a button -->
  <button class="btn btn-primary" style="margin-left: 30px" data-toggle="modal" data-target="#myModal">Ajouter un thème</button>
  <div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ajouter un thème</h4>
        </div>
        <div class="modal-body">
          <p class="theme">Thème :</p>
          <input type="text" class="tableau" id="textzone">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Ajouter</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

        <div class="container">
            <table class="table table-striped" id="fonct">
                <thead>
                    <tr>
                        <th class="firstColumn">Thème</th>
                        <th class="firstColumn">Fonctionnalité</th>
                        <th class="firstColumn">Priorité</th>
                        <th class="firstColumn">État</th>
                        <th class="firstColumn">Date</th>
                        <th>Commentaires</th>
                        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Valider</button></th>
                        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Supprimer</button></th>
                    </tr>
                </thead>
                <tr>
                    <td><select class="tableau"><option value="theme1">Thème1</option><option value="thème2">Thème 2</option></select></td>
                    <td><input class="tableau" type="text" name="f"></td>
                    <td><select class="tableau"><option value="theme3">Thème1</option><option value="thème4">Thème 2</option></select></td>
                    <td><input class="tableau" type="checkbox" style="vertical-align:middle"></td>
                    <td><input class="tableau" type="date" name="date"></td>
                    <td><textarea id="text2" class="tableau" name="dcomm"></textarea></td>
                    <td class="tableButton"><button id="" class="btn btn-primary">Valider</button></td>
                    <td class="tableButton"><button id="remove2" class="btn btn-primary">Supprimer</button></td>
                </tr>
            </table>
        </div>

        <script src="addFonctionnality.js" type="text/javascript"></script>


        <h3 style="margin-left: 30px">Fonctionnalités proposées par l'équipe :</h3>
        
        <button id="add3" class="btn btn-primary" style="margin-left: 30px">Ajouter une fonctionnalité</button>
        
        <!-- Trigger the modal with a button -->
  <button class="btn btn-primary" style="margin-left: 30px" data-toggle="modal" data-target="#myModal">Ajouter un thème</button>
  <div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ajouter un thème</h4>
        </div>
        <div class="modal-body">
          <p class="theme">Thème :</p>
          <input type="text" class="tableau" id="textzone">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Ajouter</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
        
        <div class="container">
            <table class="table table-striped" id="fonctstudent">
                <thead>
                    <tr>
                        <th class="firstColumn">Thème</th>
                        <th class="firstColumn">Fonctionnalité</th>
                        <th class="firstColumn">Priorité</th>
                        <th class="firstColumn">État</th>
                        <th class="firstColumn">Date</th>
                        <th>Commentaires</th>
                        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Valider</button></th>
                        <th class="tableButton" style="border-bottom:4px solid white"><button class="btn btn-primary" style="background-color: white; border-color: white">Supprimer</button></th>
                    </tr>
                </thead>
                <tr>
                    <td><select class="tableau"><option value="theme1">Thème1</option><option value="thème2">Thème 2</option></select></td>
                    <td><input class="tableau" type="text" name="f"></td>
                    <td><select class="tableau"><option value="theme3">Thème1</option><option value="thème4">Thème 2</option></select></td>
                    <td><input class="tableau" type="checkbox" style="vertical-align:middle"></td>
                    <td><input class="tableau" type="date" name="date"></td>
                    <td><textarea style="height:100px; width:300px" class="tableau" name="dcomm"></textarea></td>
                    <td class="tableButton"><button id="" class="btn btn-primary">Valider</button></td>
                    <td class="tableButton"><button id="remove3" class="btn btn-primary">Supprimer</button></td>
                </tr>
            </table>
        </div>

        <script src="addStudentFonctionnality.js" type="text/javascript"></script>
        
        
        <h3 style="margin-left: 30px">Trombinoscope :</h3>

        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="Images/avatar.png" alt="avatar"/>
                <div class="caption">
                    <h4>Prénom NOM</h4>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="Images/avatar.png" alt="avatar"/>
                <div class="caption">
                    <h4>Prénom NOM</h4>
                </div>
            </div>
        </div>


        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="Images/avatar.png" alt="avatar"/>
                <div class="caption">
                    <h4>Prénom NOM</h4>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="Images/avatar.png" alt="avatar"/>
                <div class="caption">
                    <h4>Prénom NOM</h4>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="Images/avatar.png" alt="avatar"/>
                <div class="caption">
                    <h4>Prénom NOM</h4>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="Images/avatar.png" alt="avatar"/>
                <div class="caption">
                    <h4>Prénom NOM</h4>
                </div>
            </div>
        </div>
<h3 style="margin-left: 30px">Documents :</h3>



  <div id="reset">reset</div> 


    </body>
</html>


<script>
    $(document).ready(function(){ 
  var secondes = 0; 
  var minutes = 0; 
  var on = false; 
  var reset = false; 
  
  $("#play").click(function(){ 
    Start(); 
  }); 
  $("#pause").click(function(){ 
    Stop(); 
  }); 
  $("#reset").click(function(){ 
    Reset(); 
  }); 
  
  function chrono(){ 
    secondes += 1; 
    
    if(secondes>59){ 
      minutes += 1; 
      secondes = 0; 
    } 
    
    if(minutes<10 && secondes<10){ 
      $("#timer").html("0"+minutes+" : 0"+secondes); 
    } 
      else if(minutes<10 && secondes>=10){ 
        $("#timer").html("0"+minutes+" : "+secondes); 
    } 
    else if(minutes>=10 && secondes<10){ 
        $("#timer").html(+minutes+" : 0"+secondes); 
    } 
    else if(minutes>=10 && secondes>10){ 
        $("#timer").html(+minutes+" : "+secondes); 
    } 
  } 
  
  function Start(){ 
    if(on===false){ 
      timerID = setInterval(chrono, 1000); 
      on = true; 
      reset = false; 
    } 
  } 
  
  function Stop(){ 
    if(on===true){ 
      on = false; 
      clearTimeout(timerID); 
    } 
  } 
  
  function Reset(){ 
    if(reset===false) 
    { 
      clearInterval(timerID); 
      secondes = 0; 
      minutes = 0; 
      $("#timer").html("00 : 00"); 
      reset = true; 
    } 
  } 
  
}); 
    
</script>