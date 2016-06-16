/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var nextRow = 2;

$('#add3').on('click', function () {
    $('#fonctstudent').append(
            [
                '<tr>',
                '<td><select class="tableau" name="theme'+nextRow+'"><option value="volvo">Volvo</option><option value="dsqdsq">dsqdsq</option></select></td>',
                '<td><input class="tableau" type="text" name="fonc'+nextRow+'></td>',
                '<td><select class="tableau" name="prio'+nextRow+'><option value="volvo">Volvo</option><option value="dsqdsq">dsqdsq</option></select></td>',
                '<td><input class="tableau" type="checkbox" style="vertical-align:middle" name="state'+nextRow+'></td>',
                '<td><input class="tableau" type="date" name="date'+nextRow+' ></td>',
                '<td><textarea id="text2" class="tableau" name="comment'+nextRow+'></textarea></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button></td>',
                '<td class="tableButton"><button id="remove3" class="btn btn-primary">Supprimer</button></td>',
                '</tr>'

            ].join('') //un seul append pour limiter les manipulations directes du DOM
            );
    nextRow ++;
    console.log(nextRow);
});

$('table').on('click', '#remove3', function () {
    var $this = $(this);
    
    $this.closest('tr').remove();
});


