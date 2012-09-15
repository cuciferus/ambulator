class FelAnalizasController < ApplicationController
  def index
    @fel_analizas = FelAnaliza.search(params[:search])
  end
end
