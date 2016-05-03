<%-- 
    Document   : HomePage
    Created on : 3 mai 2016, 10:30:29
    Author     : camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="angular.js"></script>
        <script> src="loginPageModel.js"</script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div ng-app="myApp" ng-controller="myCtrl">
            <fieldset>
                Identifant : <input type="text" ng-model="username"><br/><br/>
                Mot de passe : <input type="password" ng-model="password"><br/><br/>
                <input type="radio" name="radiobutton" id="cust"/> <label for="cust">Client</label>
                <input type="radio" name="radiobutton" id="teach"/> <label for="teach">Professeur</label>
                <input type="radio" name="radiobutton" id="stu"/> <label for="stu">Elève</label><br/><br/>
                <input type="submit" value="Valider"></input>
            </fieldset>
        </div>
    </body>
</html>
