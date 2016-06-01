<%-- 
    Document   : customerHomePage
    Created on : 3 mai 2016, 14:41:21
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,Entity.Subject"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="angular.js" type="text/javascript"></script>
        <script src="http://code.angularjs.org/angular-1.0.1.min.js"></script>
        <title>Page d'accueil Client</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search2.jsp" %>
        <h1>2016</h1>
        <HR>
        <%
            @SuppressWarnings("unchecked") 
            List<Subject> sujets = (List<Subject>)request.getAttribute("sujets");
            sujets.sort(c);
            List<String> années = null;
            if (sujets != null) {
                for (Subject sujet : sujets) { %>
                    if(années.conte
                }
            }
        %>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 1</h3>
            </div>
            <div class="panel-body">Amélioration de la gestion des projets de spécification en Génie Logiciel</div>
            <p><a href="subjectPage.jsp" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 2</h3>
            </div>
            <div class="panel-body">Système de gestion de relations Elèves / Professeurs / Responsables de parcours</div>
            <p><a href="subjectPage.jsp" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 3</h3>
            </div>
            <div class="panel-body">Amélioration de la gestion d'APP en A1</div>
            <p><a href="subjectPage.jsp" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 4</h3>
            </div>
            <div class="panel-body">Application QCM</div>
            <p><a href="subjectPage.jsp" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 5</h3>
            </div>
            <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus.</div>
            <p><a href="subjectPage.jsp" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 6</h3>
            </div>
            <div class="panel-body">Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</div>
            <p><a href="subjectPage.jsp" class="btn btn-primary">Accéder</a></p>
        </div>
        <HR class="line">
        <h1>2015</h1>
        <HR>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 1</h3>
            </div>
            <div class="panel-body">Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</div>
            <p><a href="#" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 2</h3>
            </div>
            <div class="panel-body">Amélioration de la gestion d'APP en A1</div>
            <p><a href="#" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 3</h3>
            </div>
            <div class="panel-body">Application QCM</div>
            <p><a href="#" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 4</h3>
            </div>
            <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus.</div>
            <p><a href="#" class="btn btn-primary">Accéder</a></p>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">SUJET 5</h3>
            </div>
            <div class="panel-body">Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</div>
            <p><a href="#" class="btn btn-primary">Accéder</a></p>
        </div>
    </body>
</html>
