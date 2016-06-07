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
        <a class="btn btn-primary" style="margin-left: 50px" href="studentMyProject.jsp">Mon projet</a>
        <a class="btn btn-primary" style="margin-left: 50px" href="/team?actionTeam=addYear">Création d'une équipe</a>
        
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
