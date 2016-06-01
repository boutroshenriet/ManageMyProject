<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="angular.js" type="text/javascript"></script>
        <script src="http://code.angularjs.org/angular-1.0.1.min.js"></script>
        <title>studentMyProject</title>
    </head>

    <body>
        
        <h2>EQUIPE BORDEAUX</h2><br><br>
        <div class="alert alert-danger alert-dismissable fade in" style="width: 94%; margin-left: 30px">
            <h4 align="center"><i class="icon icon-times-circle icon-lg"></i>Amélioration de la gestion des projets de spécification de Génie Logiciel</h4><br>
            <textarea name="textarea" rows="10" cols="160">Chaque année, les élèves du module Génie Logiciel consacrent quelques semaines à la rédaction d’un dossier de spécification suite à des entretiens avec un client attitré. L’objectif de ce projet est de fournir une plateforme de gestion de ces entretiens depuis la constitution des équipes jusqu’à la restitution des documents exigés par le client en passant par les prises de Rdv.
Cette plateforme permettra à chaque client de rédiger un ou plusieurs sujets et de les assigner à des équipes. Un client aura la possibilité de lister les fonctionnalités de son projet et de les classer par priorité.
Le client peut faire plusieurs réunions avec une équipe donnée, mais ces réunions ne doivent pas dépasser une certaine durée. Durant chaque réunion, le client note ses appréciations sur chaque équipe et coche les fonctionnalités qu’elle aura identifiées. Il peut également ajouter les fonctionnalités supplémentaires proposées par chaque équipe.
Chaque équipe aura la possibilité de rajouter des comptes rendus à la suite de chaque réunion et d’y déposer des documents.</textarea>

            
        </div><br>
        
        
        
        <h3 style="margin-left: 50px">Trombinoscope: </h3> <br/>
        <h3 style="margin-left: 50px">Documents: </h3> <br/>
          
     <h5 style="margin-left: 30px">   Catégorie: <strong>Dépot du professeur</strong> &nbsp
    <input type="submit" value="Déposer un fichier" id="boutton"/> </h5><br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Enoncé detaillé du sujet</a> 
    <script type="text/javascript"> 
        d = new Date();
      document.write(d.toLocaleDateString()); 
      document.write("</span></p>"); 
    </script>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Planning soutenance </a><script type="text/javascript"> 
        d = new Date();
      document.write(d.toLocaleDateString()); 
      document.write("</span></p>"); 
    </script> <br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Information sur votre client </a> <script type="text/javascript"> 
        d = new Date();
      document.write(d.toLocaleDateString()); 
      document.write("</span></p>"); 
    </script><br/>
    <h5 style="margin-left: 30px">   Catégorie: <strong>Dépot des élèves</strong> &nbsp
    <input type="submit" value="Déposer un fichier" id="boutton" /> </h5><br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> SFD</a> <br/>
    <a style="width: 94%; margin-left: 30px; href="PDF/tpicha5.pdf"> Compte rendu réunion1 </a> <br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Blablabla</a> <br/><br/>
    <h5 style="margin-left: 30px"> Catégorie: <strong>Dépot du client</strong> &nbsp
    <input type="submit" value="Déposer un fichier" id="boutton" /> </h5><br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Enoncé detaillé du sujet</a> <br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Compte rendu 1ere réunion</a> <br/>
    <a style="margin-left: 30px"; href="PDF/tpicha5.pdf"> Interview </a> <br/>
    </p>


    </body>
</html>
