# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#//= require jquery
#//= require jquery_ujs
#//= require flot/jquery.flot
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
    options = {xaxis: { mode: "time", tickLength: 5, timeformat: "%y/%m/%d"},selection: { mode: "x"}, lines: {show: true}, points: {show: true }}
    $.plot($("#charts"), [ $(this).data("message") ], options)
    return false



