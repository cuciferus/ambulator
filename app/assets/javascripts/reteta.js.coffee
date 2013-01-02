jQuery ->
  $("#retetum_data").datepicker()
  $("#last_monday").click ->
    azi = new Date()
    if azi.getDay() == 0
      ultima_luni  = new Date(azi.getTime() - 6*3600*24*1000)
      console.log("azi e duminica")
    else
      ultima_luni = new Date(azi.getTime() - (azi.getDay()-1)*3600*24*1000)
    $("#retetum_data").val(ultima_luni.getFullYear()+"-"+(ultima_luni.getMonth()+1)+"-"+ultima_luni.getDate())

  $("#next_monday").click ->
    azi = new Date()
    if azi.getDay() == 0
      console.log("caz special duminica")
      #ultima_luni = azi.getDate() + 6
      urmatoarea_luni = new Date(azi.getTime() + 3600*24*1000)
    else
      urmatoarea_luni = new Date(azi.getTime() + 8*3600*24*1000-azi.getDay()*3600*24*1000)
    $("#retetum_data").val(urmatoarea_luni.getFullYear()+"-"+(urmatoarea_luni.getMonth()+1)+"-"+urmatoarea_luni.getDate())

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
      brand_names=[]
      concentratii=[]
      cod =data[0].cod
      $("#diagnostice_reteta").text(data[0].diagnostic)
      $("#cod_reteta").text("Cod boala "+cod)
      for nume in data
        unless nume.brand_name in brand_names #filtrat pa unice
          brand_names.push(nume.brand_name)
          $("#brand_name_name").append(new Option(nume.brand_name, nume.id))
        unless nume.concentration in concentratii
          concentratii.push(nume.concentration)
          $("#concentration_name").append(new Option((nume.concentration+" "+nume.si), nume.id))
    request.error (jqXHR, textStatus, errorThrown) -> "alert nu a mers bine textStatus"


