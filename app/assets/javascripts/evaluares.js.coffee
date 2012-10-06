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

  $("#preia_recomandari").click ->
    recomandari_vechi = $("#recomandari_vechi").text()
    $("#evaluare_recomandari").val(recomandari_vechi)


#test de flot
  options = {xaxis: { mode: "time", tickLength: 5, timeformat: "%y/%m/%d"},selection: { mode: "x"}}
  data = [evaluare]
  $.plot($("#charts"),data, options)

