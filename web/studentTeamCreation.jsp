<%-- 
    Document   : studentTeamCreation
    Created on : 17 mai 2016, 19:53:24
    Author     : dimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Eleve Création équipe</title>
    </head>
    <link rel="stylesheet" type="text/css" href="style.css" /> 
    <body>
        <a href="EleveMonProjet.jsp">Mon Projet</a>
    <h1> <center>Création d'une équipe<center/></h1> 
	<form name="myForm" onsubmit="return validateMyForm()" method="post">
            <fieldset>
                <h2>Session 1</h2>
                <ul>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
    <li>NOM Prénom</li>
</ul>
            </fieldset>
            <fieldset>
		<legend>Equipe 1</legend>
		
			<table>
			<tr>
			<td id=td1> Nom de l'équipe: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
		<tr>
			<td id=td1> Elève 1: </td>
		    <td id=td2><input type="text" name="lName" /></td>
		</tr>
                <tr>
			<td id=td1> Elève 2: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève  3: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 4: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 5: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 6: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
			</table>
		
		</fieldset>
		<fieldset>
			<legend>Equipe 2:</legend>
			<table>
				<tr>
			<td id=td1> Nom de l'équipe: </td>
			<td id=td2> <input type="text" name="bDay" /> </td>
		</tr>
                 <tr>
			<td id=td1> Elève 1: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 2: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève  3: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 4: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 5: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 6: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
			</table>
		</fieldset>
            <fieldset>
			<legend>Equipe 3:</legend>
			<table>
				<tr>
			<td id=td1> Nom de l'équipe: </td>
			<td id=td2> <input type="text" name="bDay" /> </td>
		</tr>
                 <tr>
			<td id=td1> Elève 1: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 2: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève  3: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 4: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 5: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 6: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
			</table>
		</fieldset>
            <fieldset>
			<legend>Equipe 4:</legend>
			<table>
				<tr>
			<td id=td1> Nom de l'équipe: </td>
			<td id=td2> <input type="text" name="bDay" /> </td>
		</tr>
                 <tr>
			<td id=td1> Elève 1: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 2: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève  3: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 4: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 5: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
                <tr>
			<td id=td1> Elève 6: </td>
		    <td id=td2> <input type="text" name="fName"  /> </td>
		</tr>
			</table>
		</fieldset>
		
    </body>
</html>


