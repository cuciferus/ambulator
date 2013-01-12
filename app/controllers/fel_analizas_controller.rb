class FelAnalizasController < ApplicationController
  respond_to :html, :js, :json
  def index
    @fel_analizas = FelAnaliza.search(params[:search])
  end
  def get_analize
    #id e numele setului
    @seturi_analize = FelAnaliza.where(:set_grup=>params[:id])
    respond_to do |format|
      format.json{render json: @seturi_analize}
      format.js
    end
  end
end
