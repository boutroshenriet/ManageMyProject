<%-- 
    Document   : subjectPage
    Created on : 11 mai 2016, 17:41:05
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
        
    <a href="confirmation.js"></a>
        
    </head>
<%@include file="header.jsp" %>
<br>
<%@include file="search2.jsp" %>
    <body>
        
        <h2>SUJET 1</h2><br>
        <div class="alert alert-danger alert-dismissable fade in" style="width: 94%; margin-left: 30px">
            <h4><i class="icon icon-times-circle icon-lg"></i>Amélioration de la gestion des projets de spécification de Génie Logiciel</h4>
            <textarea name="textarea" rows="10" cols="160">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.

Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.</textarea>  
            <br><br>

                <!-- Trigger the modal with a button -->
  <button class="btn btn-info" data-toggle="modal" data-target="#myModal">Enregistrer les modifications apportées au sujet</button>

        </div><br>
        
        <div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div id="popup" class="modal-content">
        
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modifications enregistrées avec succès</h4>
        
        
      
    </div>
  </div>
  
</div>
        </div>
        
        <h2>ÉQUIPES SUR LE SUJET</h2><br><br>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="#" >Equipe Bordeaux</a></h3>
            </div>
            <div class="panel-body">
                <ul>
                    <li>Guillaume BARATIER</li>
                    <li>Domitille DUBERN</li>
                    <li>Pierre HENRIET</li>
                    <li>Florian CHARRIEAU</li>
                    <li>Camille GORCE</li>
                </ul> 
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="#" >Equipe Bordeaux</a></h3>
            </div>
            <div class="panel-body">
                <ul>
                    <li>Guillaume BARATIER</li>
                    <li>Domitille DUBERN</li>
                    <li>Pierre HENRIET</li>
                    <li>Florian CHARRIEAU</li>
                    <li>Camille GORCE</li>
                </ul> 
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="#" >Equipe Bordeaux</a></h3>
            </div>
            <div class="panel-body">
                <ul>
                    <li>Guillaume BARATIER</li>
                    <li>Domitille DUBERN</li>
                    <li>Pierre HENRIET</li>
                    <li>Florian CHARRIEAU</li>
                    <li>Camille GORCE</li>
                </ul> 
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="#" >Equipe Bordeaux</a></h3>
            </div>
            <div class="panel-body">
                <ul>
                    <li>Guillaume BARATIER</li>
                    <li>Domitille DUBERN</li>
                    <li>Pierre HENRIET</li>
                    <li>Florian CHARRIEAU</li>
                    <li>Camille GORCE</li>
                </ul> 
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="#" >Equipe Bordeaux</a></h3>
            </div>
            <div class="panel-body">
                <ul>
                    <li>Guillaume BARATIER</li>
                    <li>Domitille DUBERN</li>
                    <li>Pierre HENRIET</li>
                    <li>Florian CHARRIEAU</li>
                    <li>Camille GORCE</li>
                </ul> 
            </div>
        </div>
    </body>
</html>
