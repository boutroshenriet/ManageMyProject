<%@page import="java.util.*,Entity.Team"%>
 <%@page import="java.util.*,Entity.Subject"%>
  <%@page import="java.util.*,Entity.Groups"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
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
        <h3 id="formarg">Assigner des groupes et sujets aux équipes :</h3>
        <br>
        <form method="POST" action="team?actionTeam=chooseTeamGroup">
            <center><table><%
                @SuppressWarnings("unchecked") 
                List<Team> teams = (List<Team>)request.getAttribute("teams");
                List<Groups> groups = (List<Groups>)request.getAttribute("groups");
                List<Subject> subjects = (List<Subject>)request.getAttribute("subjects");
                if (teams != null) {
                    for (Team team : teams) { %>
                    <tr><td class="tdteam">
                        <%= team %>
                    </td>   
                    <td class="tdteam">Groupe : </td>
                    <td class="tdteam"><select class="selectpicker" name="group_<%= team.getId()%>">
                            <option value="0">...</option>
                        <% for (Groups group : groups) {%>
                            <option value="<%= group.getId()%>"
                                    <%if(team.getGroup() != null 
                                            && team.getGroup().getId().equals(group.getId())){%>selected<%}%>>
                                <%= group %>
                            </option>
                        <%} %>
                    </select></td>
                    <td class="tdteam">Sujet :</td>
                    <td class="tdteam"><select class="selectpicker" name="subject_<%= team.getId()%>">
                        <option value="0">...</option>
                        <% for (Subject sub : subjects) {%>
                            <option value="<%= sub.getId()%>"
                                    <%if(team.getGroup() != null 
                                            && team.getSubject().getId().equals(sub.getId())){%>selected<%}%>>
                                <%= sub %>
                            </option>
                        <%} %>
                    </select></td></tr> 
                    <%}%>
                <%}%>
                </table></center>
                <br>
                <input class="btn btn-primary" type="submit" value="Valider" id="bou"/>
        </form>
     </body>
 </html>
