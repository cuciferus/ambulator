$("#iesireLabel").replaceWith("<h2>scoate din evidenta pa <%= @pacient.nume %></h2>");
$("#modal-body").replaceWith("<%= escape_javascript( render :partial =>'pacient-iesire-modal') %>")

