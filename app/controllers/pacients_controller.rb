class PacientsController < InheritedResources::Base
  respond_to :html
  actions :all

  def index
    @pacients = Pacient.search(params[:search])
  end

end
