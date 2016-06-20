<%-- 
    Document   : customerTeamPage
    Created on : 17 mai 2016, 20:30:01
    Author     : camille
--%>
<%@page import="java.util.*,Entity.Subject"%>
<%@page import="java.util.*,Entity.Team"%>
<%@page import="java.util.*,Entity.User"%>
<%@page import="java.util.*,Entity.Feature"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>

       
    </head>
    <body>
        <%
            @SuppressWarnings("unchecked") 
            Subject sujet = (Subject)request.getAttribute("sujet");
            Team team = (Team)request.getAttribute("team");
            %>
            
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <h2><%= team.getAttribute() %></h2><br>
        <h3 style="margin-left: 30px">Sujet:</h3>
        <div class="alert alert-danger alert-dismissable fade in" style="width: 94%; margin-left: 30px">
            <h4><i class="icon icon-times-circle icon-lg"></i><%= sujet.getNameSubject()%></h4>
            <div name="textarea"><%= sujet.getDescription() %></div>  
            <br>
        </div><br>
        
        <h3 style="margin-left: 30px">Réunions :</h3><br>
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
                    <td><div id="affichedate" class="tableau" name="date"></div></td>
                    <td><span id="h">00</span>:<span id="m">00</span>:<span id="s">00</span></td>
                    <td><textarea id="text1" class="tableau" name="dcomm"></textarea></td>
                    <td class="tableButton"><button id="" class="btn btn-primary">Valider</button><button style="margin-top:20px" id="start" class="btn btn-success">Début</button></td>
                    <td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button><button style="margin-top:20px" id="pause" class="btn btn-danger">Fin</button></td>
                </tr>
            </table>
        </div>

        <script src="addMeeting.js" type="text/javascript"></script>
        
        <h3 style="margin-left: 30px">Fonctionnalités attendues par le professeur :</h3><br>

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
          <button type="button" class="btn btn-primary" data-dismiss="modal">Ajouter</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
  
<%
    @SuppressWarnings("unchecked") 
    List<Feature> features = (List<Feature>)request.getAttribute("features");
    for(Feature f : features){
    %>
<!--<form method="POST" action="projectCustomer?actionProject=addFeatureA">-->
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
<!-- </form> -->
<%} %>
<form method="POST" action="projectCustomer?actionProject=addFeatureE">
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
</form>

        <h3 style="margin-left: 30px">Fonctionnalités proposées par l'équipe :</h3><br>
        
        <button id="add3" class="btn btn-primary" style="margin-left: 30px">Ajouter une fonctionnalité</button>
           
        <!-- Trigger the modal with a button -->
  <button class="btn btn-primary" style="margin-left: 30px" data-toggle="modal" data-target="#myModal">Ajouter un thème</button>
        
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

        <% 
            for(User user : team.getUsers()){%>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="Images/avatar.png" alt="avatar"/>
                        <div class="caption">
                            <h6><%= user %></h6>
                        </div>
                    </div>
                </div>
           <% }%>
<h3 style="margin-left: 30px">Documents :</h3>

<%@include file="footer.jsp" %>
    
    </body>
</html>

<script>
    var now = new Date();
    var annee = now.getFullYear();
    var mois = now.getMonth() + 1;
    var jour = now.getDate();
    document.getElementById('affichedate').innerHTML = jour+"/"+mois+"/"+annee;
    
var h = 0; // Heure
var m = 0; // Minute
var s = 0; // Seconde
 
var temps; // Contiendra l'exécution de notre code 
var bo = true; // Permettra de contrôler l'exécution du code

function dchiffre(nb)
{
    if(nb < 10) // si le chiffre indiqué est inférieurs à dix ...
    {
        nb = "0"+nb; // .. on ajoute un zéro devant avant affichage
    }
     
    return nb;
}

$("#start").click(function()
{
    if(bo) // On controle bo pour savoir si un autre Intervalle est lancé
    {
        temps = setInterval(function()
        {
            s++;
             
            if(s > 59)
            {
                m++;
                s = 0;
            }
             
            if(m > 59)
            {
                h++;
                m = 0;
            }
             
            $("#s").html(dchiffre(s));
            $("#m").html(dchiffre(m));
            $("#h").html(dchiffre(h));
             
             
        },1000);
         
                // On affecte false à bo pour empécher un second Intervalle de se lancer
        bo = false; 
    }
});

$("#pause").click(function()
{
     
    clearInterval(temps); // On stop l'intervalle lancer
     
       // On affiche les variable dans les conteneur dédié
    $("#s").html(dchiffre(s));
    $("#m").html(dchiffre(m));
    $("#h").html(dchiffre(h));
     
       // Affecter true a bo pour indiquer qu'il n'y a plus d'Intervalle actif
    bo = true
});
    </script>