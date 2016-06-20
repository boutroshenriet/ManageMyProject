<%@page import="java.util.*,Entity.Session"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

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
    </head>

    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        <br>
        
        
<h3 id="formarg">Ajouter une session :</h3>
        <form method="POST" action="session?actionSession=add">
            <br>
            <center><table>

                    <tr>
                        <td id="tdsession1"><div style="margin-left:15px">Session:</div></td>
                        <td id="tdsession2"><input type="text" name="sessionName" placeholder="Saisir le nom de la session" class="form-control"/></td>
                        <td id="td3"><input style="margin-right: 15px" type="submit" value="Ajouter" class="btn btn-primary"/></td>
                    </tr>
                </table></center>
        </form>
<br>
<h3 id="formarg">Sessions déjà créées :</h3><br>
        <ol class="docs"> <%
            @SuppressWarnings(  "unchecked")
            List<Session> sessions = (List<Session>) request.getAttribute("sessions");
            if (sessions != null) {
                for (Session ses : sessions) {%>
            <li> <%= ses%> </li><br> <%
                            }
                        }%>
        </ol>
        <%@include file="footer.jsp" %>
    </body>
</html>