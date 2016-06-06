<%-- 
    Document   : studentTeamCreation
    Created on : 6 juin 2016, 10:24:14
    Author     : domitilledubern
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="myForm" onsubmit="return validateMyForm()" method="post">

            <h2>EQUIPE BORDEAUX</h2><br><br>



            <div class="panel panel-info" style="width: 17%; height: 70%; margin-left: 30px; background: #d9edf7">
                <div class="panel-heading">
                    <h3 class="panel-title"> SESSION 1</h3>
                </div>  
                <textarea name="textarea" rows="33" cols="23" style="background-color: #d9edf7">

    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
    NOM Prénom
   
  
                </textarea> 
            </div>
            <div class="panel panel-info" style="width:17%; height:30%">
                <div class="panel-heading">
                    <h3 class="panel-title"> EQUIPE 1</h3>
                </div>  
                <div class="panel-body"><fieldset>

                        <table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="fName"  /> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu11"> Elève 1: </td>
                                <td id=td2><select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select></td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu12"> Elève 2: </td>
                                <td id=td2> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu13"> Elève  3: </td>
                                <td id=td2> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu14"> Elève 4: </td>
                                <td id=td2> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu15"> Elève 5: </td>
                                <td id=td2> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 name="stu16"> Elève 6: </td>
                                <td id=td2> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td id=td2><a href=".jsp" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table>

                    </fieldset></div>
            </div>
            <div class="panel panel-info" style="width: 17%; height: 30%; margin-left:150px">
                <div class="panel-heading">
                    <h3 class="panel-title">EQUIPE 2</h3>
                </div>
                <div class="panel-body"><fieldset>

                        <table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="fName" /> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 1: </td>
                                <td id=td2 name="stu21"><select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 > Elève 2: </td>
                                <td id=td2 name="stu22"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève  3: </td>
                                <td id=td2 name="stu23"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 4: </td>
                                <td id=td2 name="stu24"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 5: </td>
                                <td id=td2 name="stu25"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 6: </td>
                                <td id=td2 name="stu26"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td id=td2><a href=".jsp" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table>

                    </fieldset></div>
            </div>
            <div class="panel panel-info"style="width: 17%; height: 30%; margin-left: 170px">
                <div class="panel-heading">
                    <h3 class="panel-title">EQUIPE 3</h3>
                </div>
                <div class="panel-body"><fieldset>

                        <table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="fName"  /> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 1: </td>
                                <td id=td2 name="stu31"><select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 2: </td>
                                <td id=td2 name="stu32"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève  3: </td>
                                <td id=td2 name="stu33"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 4: </td>
                                <td id=td2 name="stu34"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 5: </td>
                                <td id=td2 name="stu35"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 6: </td>
                                <td id=td2 name="stu36"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td id=td2><a href=".jsp" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table>

                    </fieldset></div>
            </div>
            <div class="panel panel-info"style="width: 17%; height: 30%; margin-left: 30px">
                <div class="panel-heading">
                    <h3 class="panel-title">EQUIPE 4</h3>
                </div>
               <div class="panel-body"><fieldset>

                        <table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="fName"  /> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 1: </td>
                                <td id=td2 name="stu41"><select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 2: </td>
                                <td id=td2 name="stu42"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève  3: </td>
                                <td id=td2 name="stu43"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 4: </td>
                                <td id=td2 name="stu44"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 5: </td>
                                <td id=td2 name="stu45"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 6: </td>
                                <td id=td2 name="stu46"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td id=td2><a href=".jsp" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table>

                    </fieldset></div>
            </div>
            
               
                     <div class="panel panel-info" style="width: 17%; height: 30%; margin-left:150px">
                <div class="panel-heading">
                    <h3 class="panel-title">EQUIPE 5</h3>
                </div>
                <div class="panel-body"><fieldset>

                        <table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="fName" /> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 1: </td>
                                <td id=td2 name="stu51"><select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1 > Elève 2: </td>
                                <td id=td2 name="stu52"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève  3: </td>
                                <td id=td2 name="stu53"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 4: </td>
                                <td id=td2 name="stu54"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 5: </td>
                                <td id=td2 name="stu55"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 6: </td>
                                <td id=td2 name="stu56"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td id=td2><a href=".jsp" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table>

                    </fieldset></div>
            </div>
            <div class="panel panel-info"style="width: 17%; height: 30%; margin-left: 170px">
                <div class="panel-heading">
                    <h3 class="panel-title">EQUIPE 6</h3>
                </div>
                <div class="panel-body"><fieldset>

                        <table>
                            <tr>
                                <td id=td1> Nom de l'équipe: </td>
                                <td id=td2> <input class="tableau2" type="text" name="fName"  /> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 1: </td>
                                <td id=td2 name="stu61"><select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 2: </td>
                                <td id=td2 name="stu62"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève  3: </td>
                                <td id=td2 name="stu63"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 4: </td>
                                <td id=td2 name="stu64"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select> </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 5: </td>
                                <td id=td2 name="stu65"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td id=td1> Elève 6: </td>
                                <td id=td2 name="stu66"> <select class="tableau2">
                                        <option value="élève1">élève1</option>
                                        <option value="élève2">élève2</option>
                                        <option value="élève3">élève3</option>
                                        <option value="élève4">élève4</option>
                                        <option value="élève5">élève4</option>
                                        <option value="élève6">élève6</option>
                                    
                                    </select>  </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td id=td2><a href=".jsp" class="btn btn-primary">Valider</a> </td>
                            </tr>
                        </table>

                    </fieldset></div>
            </div>
      
</body>
</html>

