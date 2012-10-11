# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
//= require jquery
//= require jquery_ujs
//= require flot/jquery.flot
jQuery ->
  $("#preluare_diagnostice").click ->
    diagnostice_vechi= $("#diagnostice_vechi").text()
    $("#evaluare_diagnostice").val(diagnostice_vechi)
    return false

  $("#preia_recomandari").click ->
    recomandari_vechi = $("#recomandari_vechi").text()
    $("#evaluare_recomandari").val(recomandari_vechi)
    return false

  $(".adauga_grafic").click ->
    console.log [ $(this).data("message")]
    console.log [evaluare]
    options = {xaxis: { mode: "time", tickLength: 5, timeformat: "%y/%m/%d"},selection: { mode: "x"}}
    $.plot($("#charts"), [ $(this).data("message") ], options)
    return false


#test de flot
  data = [evaluare]
  options = {xaxis: { mode: "time", tickLength: 5, timeformat: "%y/%m/%d"},selection: { mode: "x"}}
  $.plot($("#charts"),data, options)

