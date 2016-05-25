/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#add').on('click', function() {    
    $('#reu').append( 
        [
            '<tr>',
                '<td><input class="tableau" type="date" name="date"></td>',
                '<td><input class="tableau" type="text" name="duree"></td>',
                '<td><textarea style="height:100px; width:500px" class="tableau" name="dcomm"></textarea></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button><button style="margin-top:20px" class="btn btn-success">Début</button></td>',
                '<td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button><button style="margin-top:20px" class="btn btn-danger">Fin</button></td>',
            '</tr>'
            
        ].join('') //un seul append pour limiter les manipulations directes du DOM
    );  
});
 
$('table').on('click', '#remove', function() {
   var $this = $(this);
   
   $this.closest('tr').remove();
});
