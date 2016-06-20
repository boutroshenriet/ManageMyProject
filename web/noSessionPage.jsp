<%-- 
    Document   : noSessionPage
    Created on : 8 juin 2016, 15:01:57
    Author     : Guillaume
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/i18n/defaults-*.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="Images/ManageLogo.png" rel="shortcut icon" >
        <title>Manage My Project</title>
    </head>

    <%@include file="header.jsp" %>
    <br>
    <%@include file="search4.jsp" %>

    <body>
        <div class="alert alert-info alert-dismissable fade in" style="margin-left: 30px; margin-right: 30px">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Attention !</strong> Vous ne faites actuellement pas partie d'une session. Veuillez attendre que le professeur vous en attribue une.
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
