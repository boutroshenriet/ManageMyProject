/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/*function  getId(element) {
    var r = element.parentNode.parentNode.rowIndex;
    console.log(r);
}*/
    var nextRow = 2;

$('#add').on('click', function() {   

    $('#reu').append( 
        [
            '<tr>',
                '<td><input class="tableau" type="date" name="date'+nextRow+'"></td>',
                '<td><span id="h1'+nextRow+'">00</span>:<span id="m1'+nextRow+'">00</span>:<span id="s1'+nextRow+'">00</span></td>',
                '<td><textarea id="text1" class="tableau" name="dcomm"></textarea></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button><button style="margin-top:20px" id="start1'+nextRow+'" class="btn btn-success">Début</button></td>',
                '<td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button><button style="margin-top:20px" id="pause1'+nextRow+'" class="btn btn-danger">Fin</button></td>',
            '</tr>'
            
        ].join('') //un seul append pour limiter les manipulations directes du DOM
        
    );  


window['h1' + nextRow] = 0;

window['m1' + nextRow] = 0;

window['s1' + nextRow] = 0;

window['temps1' + nextRow] = 0;

window['bo1' + nextRow] = true;



function dchiffre1(nb1)
{
    if(nb1 < 10) // si le chiffre indiqué est inférieur à dix ...
    {
        nb1 = "0"+nb1; // .. on ajoute un zéro devant avant affichage
    }
     
    return nb1;
}

$('[id="start1'+nextRow+'"]').click(function()
{
    if(window['bo1' + nextRow]) // On controle bo pour savoir si un autre Intervalle est lancé
    {
        window['temps1' + nextRow] = setInterval(function()
        {
            window['s1' + nextRow]++;
             
            if(window['s1' + nextRow] > 59)
            {
                window['m1' + nextRow]++;
                window['s1' + nextRow] = 0;
            }
             
            if(window['m1' + nextRow] > 59)
            {
                window['1' + nextRow]++;
                window['m1' + nextRow] = 0;
            }
             
            $('[id="s1'+nextRow+'"]').html(dchiffre1(window['s1' + nextRow]));
            $('[id="m1'+nextRow+'"]').html(dchiffre1(window['m1' + nextRow]));
            $('[id="h1'+nextRow+'"]').html(dchiffre1(window['h1' + nextRow]));
             
             
        },1000);
         
                // On affecte false à bo pour empécher un second Intervalle de se lancer
        window['bo1' + nextRow] = false; 
    }
});

$('[id="pause1'+nextRow+'"]').click(function()
{
     
    clearInterval(window['temps1' + nextRow]); // On stop l'intervalle lancer
     
       // On affiche les variable dans les conteneur dédié
    $('[id="s1'+nextRow+'"]').html(dchiffre1(window['s1' + nextRow]));
    $('[id="m1'+nextRow+'"]').html(dchiffre1(window['m1' + nextRow]));
    $('[id="h1'+nextRow+'"]').html(dchiffre1(window['h1' + nextRow]));
     
       // Affecter true a bo pour indiquer qu'il n'y a plus d'Intervalle actif
    window['bo1' + nextRow] = true
    
        nextRow ++;
        
       // window['da' + nextRow] = 'window['h1' + nextRow]','window['h1' + nextRow]';

});
});

 
$('table').on('click', '#remove', function() {
   var $this = $(this);
   
   $this.closest('tr').remove();
   
   

   
});



