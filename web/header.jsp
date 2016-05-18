<%-- 
    Document   : header
    Created on : 11 mai 2016, 10:44:18
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="angular.js" type="text/javascript"></script>
    </head>
    <body>
        <header>
            <div class="fond">
                <a href="customerHomePage.jsp"><img class="logo" src="Images/logoISEP.png" alt="logo ISEP"/></a>
                <div class='infos'>
                    <img class="photo" src="Images/Photo_identité.jpg" alt="Photo d'identité"/><br/>
                    <div class="user">
                        <p>Florian CHARRIEAU</p>
                        <a href="#">Déconnexion</a> <!-- ng-onclick -->
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
