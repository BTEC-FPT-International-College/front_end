
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
    window.location="transaction-history.jsp";
}

function Redirect() {
    window.location="recharge-history.jsp";
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

