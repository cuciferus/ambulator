# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("#pacients_search").submit ->
    $.get(this.action, $(this).serialize(), null, "script")
    return false
  $("form.new_pacient").on "ajax:success", (event, data, status, xhr) ->
    $("#newPacientModal").modal('hide')
