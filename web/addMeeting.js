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
                '<td><span id="h1">00</span>:<span id="m1">00</span>:<span id="s1">00</span></td>',
                '<td><textarea id="text1" class="tableau" name="dcomm"></textarea></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button><button style="margin-top:20px" id="start1" class="btn btn-success">Début</button></td>',
                '<td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button><button style="margin-top:20px" id="pause1" class="btn btn-danger">Fin</button></td>',
            '</tr>'
            
        ].join('') //un seul append pour limiter les manipulations directes du DOM
    );  
});
 
$('table').on('click', '#remove', function() {
   var $this = $(this);
   
   $this.closest('tr').remove();
});

var h1 = 0; // Heure
var m1 = 0; // Minute
var s1 = 0; // Seconde
 
var temps1; // Contiendra l'exécution de notre code 
var bo1 = true; // Permettra de contrôler l'exécution du code

function dchiffre1(nb1)
{
    if(nb1 < 10) // si le chiffre indiqué est inférieurs à dix ...
    {
        nb1 = "0"+nb1; // .. on ajoute un zéro devant avant affichage
    }
     
    return nb1;
}

$("#start1").click(function()
{
    if(bo1) // On controle bo pour savoir si un autre Intervalle est lancé
    {
        temps1 = setInterval(function()
        {
            s1++;
             
            if(s1 > 59)
            {
                m1++;
                s1 = 0;
            }
             
            if(m1 > 59)
            {
                h1++;
                m1 = 0;
            }
             
            $("#s1").html(dchiffre1(s1));
            $("#m1").html(dchiffre1(m1));
            $("#h1").html(dchiffre1(h1));
             
             
        },1000);
         
                // On affecte false à bo pour empécher un second Intervalle de se lancer
        bo1 = false; 
    }
});

$("#pause1").click(function()
{
     
    clearInterval(temps1); // On stop l'intervalle lancer
     
       // On affiche les variable dans les conteneur dédié
    $("#s1").html(dchiffre1(s1));
    $("#m1").html(dchiffre1(m1));
    $("#h1").html(dchiffre1(h1));
     
       // Affecter true a bo pour indiquer qu'il n'y a plus d'Intervalle actif
    bo1 = true
});