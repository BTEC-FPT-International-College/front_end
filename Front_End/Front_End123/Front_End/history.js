
// $(function() {
//     $('.btns').on('click', function() {
//         //figure out which tab to show
//         var panelToShow = $(this).attr('rel');

//         //hide current pannel
//         $('.tbs.active').slideUp(300, function() {
//             $('#'+panelToShow).slideDown(300, function() {
//                 $(this).addClass('active');
//             });
            
//         });
//     });
// });
function Redirectf() {
    window.location="transaction-history.html";
}

function Redirect() {
    window.location="recharge-history.html";
}

$(document).ready(function() {
    $('#myInput').on('keyup', function(event) {
        event.preventDefault();
        /* Act on the event */
        var tukhoa = $(this).val().toLowerCase();
        $('.tbs tr').filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(tukhoa)>-1);
        });
    });
    });

    $(function() {  
        $( "#button-search" ).button();  
        $( "#button-search" ).buttonset();  
     });  

