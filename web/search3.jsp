<%-- 
    Document   : search3
    Created on : 17 mai 2016, 17:24:46
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">
  <div class="row">
    <div class="col-md-12">
    <div class="row">
        
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="year">Années</a></div>
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="subject">Sujets</a></div>
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="user">Utilisateurs</a></div>
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="document">Documents</a></div>
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="session">Sessions</a></div>
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="group">Groupes</a></div>
        <div class="col-lg-1"><a class="btn btn-primary" id="taillB" href="team">Equipes</a></div>
    </div>
        
<div class="row">
    <div class="row">  </div>

        <div class="col-lg-4 col-lg-offset-8">
            <div class="form-group" style="margin-top: 15px">
                 <div class="input-group input-group-md icon-addon addon-md">
                    <input type="text" placeholder="Saisir le nom d'une équipe" name="" id="schbox" class="form-control">
                    <span class="input-group-btn">
                        <a href="searchResults.jsp" type="submit" class="btn btn-primary">Rechercher</a>
                    </span>
                </div>
            </div>
        </div>
</div></div></div>
</div>
        </body>
</html>
