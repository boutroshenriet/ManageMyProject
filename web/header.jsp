<%-- 
    Document   : headertest
    Created on : 7 juin 2016, 09:52:12
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,Entity.User"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="Images/ManageLogo.png" rel="shortcut icon" >
        <title>Manage My Project</title>
    </head>
    <body>
        
            <div class="row">
    <div class="col-md-12" id="head">

            <div class="row">

                <div class="col-sm-3" style="height: 98%">
                    <img src="Images/logoISEP.png" class="logo2" alt=""/>
                </div>
                <div class="col-sm-9" style="text-align:right">
                    <img class="photo2" src="Images/avatar.png" alt="Photo d'identité"/><br/>
                    <div class="user">
                        <p><%= (User)session.getAttribute("currentUser") %></p>
                        <a href="connexion?actionConnexion=deconnecter">Déconnexion</a> <!-- ng-onclick -->
                    </div>
                </div>
            </div></div></div>
       
    </body>
</html>
