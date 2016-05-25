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
                '<td><div id="timer">00 : 00</div></td>',
                '<td><textarea id="text1" class="tableau" name="dcomm"></textarea></td>',
                '<td class="tableButton"><button id="" class="btn btn-primary">Valider</button><button style="margin-top:20px" id="play" class="btn btn-success">Début</button></td>',
                '<td class="tableButton"><button id="remove" class="btn btn-primary">Supprimer</button><button style="margin-top:20px" id="pause" class="btn btn-danger">Fin</button></td>',
            '</tr>'
            
        ].join('') //un seul append pour limiter les manipulations directes du DOM
    );  
});
 
$('table').on('click', '#remove', function() {
   var $this = $(this);
   
   $this.closest('tr').remove();
});


    $(document).ready(function(){ 
  var secondes = 0; 
  var minutes = 0; 
  var on = false; 
  var reset = false; 
  
  $("#play").click(function(){ 
    Start(); 
  }); 
  $("#pause").click(function(){ 
    Stop(); 
  }); 
  $("#reset").click(function(){ 
    Reset(); 
  }); 
  
  function chrono(){ 
    secondes += 1; 
    
    if(secondes>59){ 
      minutes += 1; 
      secondes = 0; 
    } 
    
    if(minutes<10 && secondes<10){ 
      $("#timer").html("0"+minutes+" : 0"+secondes); 
    } 
      else if(minutes<10 && secondes>=10){ 
        $("#timer").html("0"+minutes+" : "+secondes); 
    } 
    else if(minutes>=10 && secondes<10){ 
        $("#timer").html(+minutes+" : 0"+secondes); 
    } 
    else if(minutes>=10 && secondes>10){ 
        $("#timer").html(+minutes+" : "+secondes); 
    } 
  } 
  
  function Start(){ 
    if(on===false){ 
      timerID = setInterval(chrono, 1000); 
      on = true; 
      reset = false; 
    } 
  } 
  
  function Stop(){ 
    if(on===true){ 
      on = false; 
      clearTimeout(timerID); 
    } 
  } 
  
  function Reset(){ 
    if(reset===false) 
    { 
      clearInterval(timerID); 
      secondes = 0; 
      minutes = 0; 
      $("#timer").html("00 : 00"); 
      reset = true; 
    } 
  } 
  
}); 