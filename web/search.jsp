<%-- 
    Document   : search
    Created on : 12 mai 2016, 21:38:28
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="test.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <p style="margin-left: 75%; float: left">Recherche :<p>
        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Equipe
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">Bordeaux</a></li>
                <li><a href="#">Vert kaki</a></li>
                <li><a href="#">Rouge</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Inconnue</a></li>
            </ul>
        </div>

        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Année
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">2016</a></li>
                <li><a href="#">2015</a></li>
                <li><a href="#">2014</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Inconnue</a></li>
            </ul>
        </div>

        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Sujet
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">Sujet 1</a></li>
                <li><a href="#">Sujet 2</a></li>
                <li><a href="#">Sujet 3</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Inconnu</a></li>
            </ul>
        </div>
    </body>
</html>
