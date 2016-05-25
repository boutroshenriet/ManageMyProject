/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#add2').on('click', function () {
    $('#fonct').append(
            [
                '<tr>',
                '<td><select class="tableau"><option value="volvo">Volvo</option><option value="dsqdsq">dsqdsq</option></select></td>',
                '<td><input class="tableau" type="text" name="f"></td>',
                '<td><select class="tableau"><option value="volvo">Volvo</option><option value="dsqdsq">dsqdsq</option></select></td>',
                '<td><input class="tableau" type="checkbox" style="vertical-align:middle"></td>',
                '<td><input class="tableau" type="date" name="date"></td>',
                '<td><textarea style="height:100px; width:300px" class="tableau" name="dcomm"></textarea></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button></td>',
                '<td class="tableButton"><button id="remove2" class="btn btn-primary">Supprimer</button></td>',
                '</tr>',

            ].join('') //un seul append pour limiter les manipulations directes du DOM
            );
});

$('table').on('click', '#remove2', function () {
    var $this = $(this);

    $this.closest('tr').remove();
});

