$('#exercise-form').html("<%= escape_javascript (render 'form')%>");
$('#exercise-form').slideDown(350);