class FelAnalizasController < InheritedResources::Base
  def index
    @fel_analizas = FelAnaliza.search(params[:search])
  end
end
