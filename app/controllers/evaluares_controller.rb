class EvaluaresController < InheritedResources::Base
  belongs_to :pacient
  actions :index, :new, :create
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.new
    @paraclinice = Array.new
    analize_standard = FelAnaliza.where(:standard => true)
    analize_standard.each do |analiza|
      @paraclinice.append Paraclinic.create!(:fel_analiza_id => analiza.id)
    end
  end
end
