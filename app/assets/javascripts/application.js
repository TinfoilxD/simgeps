// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require twitter/bootstrap


$( document ).on('turbolinks:load', function() {
   addListeners()
});

function addListeners()
{
    $('#get_winners').click(function(){
        data = {id: $('#sponsor_id').val()}
        $.ajax({
            url: "/cio_raffle_get_winners",
            type: "POST",
            data: data,
            dataType: 'json',
            success: function(json) {
                createWinnerPartial(json)
            }
        })
    })
}
function createWinnerPartial(winners)
{
    //resets the winners area view
    $('#winners_area').empty()
    //creates the tablehead
    $('#winners_area').append("<tr><th>Name</th><th>Company</th><th>&nbsp</th><th>&nbsp</th></tr>")
    for (key in winners)
    {
        table_row_id = key + "_row"
        receive_button_id = key + "_receive_button"
        not_present_button_id = key + "_not_present_button"
        //render each individual row
        table_cell_string = "<tr id= " + table_row_id + "><td>" + winners[key].name + "</td><td>" + winners[key].company + "</td>"
        button_cell_string = "<td id><a id= " + receive_button_id + ">Received Prize</a></td><td><a id= " + not_present_button_id+ ">Not Present</a></td></tr>"


        //add click handlers to the two buttons for each row
        $('#winners_area').append(table_cell_string + button_cell_string)
        $('#' + receive_button_id).click(function(){alert("This is " + receive_button_id)})
        $('#' + not_present_button_id).click(function(){alert("This is " + not_present_button_id)})

    }
}

