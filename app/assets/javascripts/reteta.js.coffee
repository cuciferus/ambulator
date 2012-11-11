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
    $("#serie_reteta").text($(this).attr('value'))
    $(this).attr('value')
    request = $.get("/retetars/4.json")
    request.success (data) -> console.log data.tip
    request.error (jqXHR, textStatus, errorThrown) -> "alert nu a mers bine textStatus"
    

