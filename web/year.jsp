<%@page import="java.util.*,Entity.Year"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/i18n/defaults-*.min.js"></script>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </head>

    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        <ol>
            <form method="POST" action="year?actionYear=choose">
                <br>      
                <h3 id="formargb">Séléctionner une année :</h3>

                <br>

                <center><table>
                        <tr>
                            <td id="tdsession1">Années disponibles :</td>
                            <td id="tdsession2b"><select name="yearList" class="selectpicker">
                                    <%
                                        @SuppressWarnings(  "unchecked")
                                        //if(request.getAttribute("yearmessage")){
                                        //    String yearmessage = request.getAttribute("yearmessage").toString();
                                        //    if( yearmessage != null){
                                        //        out.print(yearmessage);
                                        //    }  
                                        //}

                                        List<Year> years = (List<Year>) request.getAttribute("years");

                                        HttpSession sessionCurrent = null;
                                        sessionCurrent = request.getSession();
                                        String currentYear = null;
                                        if (sessionCurrent.getAttribute("year") != null) {
                                            currentYear = sessionCurrent.getAttribute("year").toString();
                                        }
                                        String currentYearNumber = "";
                                        if (years != null) {
                                            for (Year year : years) {
                                                if (year.getId().toString().equals(currentYear)) {
                                                    currentYearNumber = year.getYearNumber().toString();
                                    %> <option value="<% out.print(year.getId().toString());%>" selected> 
                                    <b> <%= year%> </b> 
                                    </option> <%
                                    } else {
                                    %> <option value="<% out.print(year.getId().toString());%>"> 
                                        <%= year%>
                                    </option> <%
                                }
                            }
                        }%>
                                </select></td>
                            <!-- <% out.print(currentYearNumber);%> -->
                            <td id="tdsession1"><input type="submit" value="Selectionner" class="btn btn-primary" /></td>
                        </tr>
                    </table></center>

            </form>
        </ol>
        <form method="POST" action="year?actionYear=addYear">
            <br><br>
            <h3 id="formarg">Ajouter une année :</h3>
            <br>

            <!-- Année: <input type="year" name="year" /> -->
            <center><div class="form-group" style="width: 20%; margin-left: 30px">
                    <div class="input-group input-group-md icon-addon addon-md">
                        <input placeholder="Saisir une année" type="year" name="year" id="schbox" class="form-control">
                        <span class="input-group-btn">
                            <input type="submit" value="Ajouter" class="btn btn-primary" />

                    </div>
                </div></center>
        </span>
        <!-- <div id="test"></div>
        <script>
            $('#clic').on('click', function(e) {
                e.preventDefault();

$('#test').append('<div class="alert alert-success alert-dismissable fade in">',
'<i class="icon icon-check-circle icon-lg"></i>',
'<strong>Succès !</strong> message de reussite.',
'</div>');
            });
            
        </script> -->


    </form>
                            
                            <%@include file="footer.jsp" %>

</body>
</html>
