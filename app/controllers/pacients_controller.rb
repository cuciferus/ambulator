class PacientsController < InheritedResources::Base
  def index
    @pacients = Pacient.search(params[:search])
  end

end
