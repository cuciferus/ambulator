jQuery ->
  alert "plm"
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
      $("span#medic_reteta").text(data.medic.nume + " " + data.medic.prenume)
      $("span#serie_reteta").text(data.serie)
    request.error (jqXHR, textStatus, errorThrown) -> "alert nu a mers bine textStatus"
