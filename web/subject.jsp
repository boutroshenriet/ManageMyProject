<%@page import="java.util.*,Entity.Subject"%>
 <%@page import="java.util.*,Entity.User"%>
  <%@page import="java.util.*,DAO.YearDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        
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
                    <% 
                        
			if(request.getSession().getAttribute("year") != null)
			{
				String year = request.getAttribute("year").toString();
                    %> <center><h3>Vous avez sélectionné l'année <%=year%> </h3></center>
                                <%
			}
			%>
        
        <form method="POST" action="subject" style="margin-left: 30px">
            <br>
            <h3 id="formarg">Ajouter un sujet :</h3>
            <br>
                    <center><table style="height:400px; vertical-align: middle">
                
                            <tr><td id="tdsession1">Intitulé du sujet :</td>
                                <td id="tdgroup2"><input type="text" class="form-control" name="name" /></td></tr>
                        
           <!-- Password: <input type="text" name="password" /> -->
           <tr><td id="tdsession1">Client:</td>
               <td id="tdgroup2"> <select name="client" class="selectpicker" data-live-search="true">
            <%
             @SuppressWarnings("unchecked") 
             List<User> clients = (List<User>)request.getAttribute("clients");
             if (clients != null) {
                 for (User client : clients) { %>
                    <option value="<% out.print(client.getId().toString()); %>"> 
                            <%= client %>
                    </option> <%
                 }
             } %>
           </select></td></tr>

           <tr>
               <td id="tdsession1"> Description:</td>
               
               <td id="tdgroup2"> <textarea class="form-control" rows="10" name="description"/></textarea></td>
           </tr>
           <tr>
               <td></td>
               <td id="td3"><input type="submit" value="Ajouter" class="btn btn-primary"/></td>
            </tr>
        </form>
           </table></center>
           
 <h3 id="formarg">Sujets déjà existants :</h3>
 <br>
           <br>
       <ol class="docs"> <%
            @SuppressWarnings("unchecked") 
            List<Subject> subjects = (List<Subject>)request.getAttribute("subjects");
            if (subjects != null) {
                for (Subject subject : subjects) { %>
                <li> <%= subject %> </li><br> <%
                }
            } %>
        </ol>
        
     </body>
     <div id="foot">
          <%@include file="footer.jsp" %></div>
 </html>
