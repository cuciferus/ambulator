# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("#evaluare_data").datepicker()
  $("#preluare_diagnostice").click ->
    diagnostice_vechi= $("#diagnostice_vechi").text()
    $("#evaluare_diagnostice").val(diagnostice_vechi)
    return false

  $("#preia_recomandari").click ->
    recomandari_vechi = $("#recomandari_vechi").text()
    $("#evaluare_recomandari").val(recomandari_vechi)
    return false


  $(".adauga_grafic").click ->
    if $("#charts").length
      $("#titlu_grafic").remove()
      $("#charts").remove()
      $("#inchide_div").remove()
      return false
    $(this).closest("tr").after ->
      "<tr><td colspan='7'><div id='charts'>Salut</div></td></tr>"
    $("#charts").width(560)
    datele = $(this).data("message")
    $("#charts").replaceWith("<div id='titlu_grafic'></div><div id='charts'></div><div id='inchide_div'><button type='button' id='inchide'>Inchide grafic</button></div>")
    $("#charts").animate {height:"300px","fast"} , ->
      $("#titlu_grafic").empty().append("Graficul analizei X")
      Morris.Line
        element: 'charts'
        data: datele["valori"]
        xkey: 'data'
        ykeys: ['valoare']
        labels: [datele["nume_analiza"].replace("_"," ")]
        postUnits: datele["unitate_de_masura"]
    return false

  $("form").on "click","#inchide",(event) ->
    $("charts").fadeOut(10000).animate
       opacity:"0" , ->
      $("#charts").parent("tr:first").remove()
      $("#titlu_grafic").remove()
      $("#inchide_div").remove()


