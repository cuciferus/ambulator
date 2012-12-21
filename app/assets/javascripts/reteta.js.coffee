jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $("#retetum_retetar_id").change ->
    id_retetar = $(this).attr('value')
    request = $.get("/retetars/"+ id_retetar + ".json")
    request.success (data) ->
      $("#serie_reteta").text(data.serie)
      $("#medic_reteta").text(data.medic.nume + " " + data.medic.prenume)
    request.error (jqXHR, textStatus, errorThrown) -> "alert nu a mers bine textStatus"

  $("#dci_name").change ->
    id_dci = $(this).attr('value')
    request = $.get("/drugs/find_by_dci/"+id_dci+".json")
    request.success (data) ->
      $("#brand_name_name").empty()
      $("#concentration_name").empty()
      for nume in data
        $("#brand_name_name").append(new Option(nume.brand_name, "valoare"))
        $("#concentration_name").append(new Option(nume.concentration, "valoare"))
    request.error (jqXHR, textStatus, errorThrown) -> "alert nu a mers bine textStatus"

