class EvaluaresController < InheritedResources::Base
  belongs_to :pacient
  actions :index, :new, :create, :show, :edit
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.new
    @analize_standard = FelAnaliza.where(:standard => true)
    @analize_standard.each do |analiza|
      @evaluare.paraclinics.build({:fel_analiza_id => analiza.id})
    end
  end
end
