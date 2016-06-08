<%-- 
    Document   : search2
    Created on : 17 mai 2016, 17:24:46
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
<div style="float:left">
        <a class="btn btn-primary" style="margin-left: 50px" href="year?action=addYear">Années</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="subject?action=addSuject">Sujets</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="user?action=addUsers">Utilisateurs</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="document?action=documents">Documents</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="session">Sessions</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="group">Groupes</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="team">Equipes</a>
        
        </div>
        <div class="form-group" style="width: 30%; margin-left: 68%">
            <div class="input-group input-group-md icon-addon addon-md">
                <input type="text" placeholder="Saisir le nom d'une équipe" name="" id="schbox" class="form-control">
                <span class="input-group-btn">
                    <a href="searchResults.jsp" type="submit" class="btn btn-primary">Rechercher</a>
                </span>
            </div>
            
            </div>
    </body>
</html>
