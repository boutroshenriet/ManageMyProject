<%@page import="java.util.*,Entity.Team"%>
 <%@page import="java.util.*,Entity.Subject"%>
  <%@page import="java.util.*,Entity.Groups"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JPA Guest Book Web Application Tutorial</title>
    </head>
  
    <body>
        <%@include file="header.jsp" %>
        <br>
        <%@include file="search3.jsp" %>
        <form method="POST" action="team?actionTeam=chooseTeamGroup">
            <table> <%
                @SuppressWarnings("unchecked") 
                List<Team> teams = (List<Team>)request.getAttribute("teams");
                List<Groups> groups = (List<Groups>)request.getAttribute("groups");
                List<Subject> subjects = (List<Subject>)request.getAttribute("subjects");
                if (teams != null) {
                    for (Team team : teams) { %>
                    <td>
                        <%= team %>
                    </td>   
                    <td>Groupe: <select name="group_<%= team.getId()%>">
                            <option value="0">...</option>
                        <% for (Groups group : groups) {%>
                            <option value="<%= group.getId()%>"
                                    <%if(team.getGroup() != null 
                                            && team.getGroup().getId().equals(group.getId())){%>selected<%}%>>
                                <%= group %>
                            </option>
                        <%} %>
                    </select></td>
                    <td>Sujet: <select name="subject_<%= team.getId()%>">
                        <option value="0">...</option>
                        <% for (Subject sub : subjects) {%>
                            <option value="<%= sub.getId()%>"
                                    <%if(team.getGroup() != null 
                                            && team.getSubject().getId().equals(sub.getId())){%>selected<%}%>>
                                <%= sub %>
                            </option>
                        <%} %>
                    </select></td>
                    <%}%>
                <%}%>
            </table>
            <input type="submit" value="Add" />
        </form>
         
        
     </body>
 </html>