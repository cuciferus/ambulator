class EvaluaresController < InheritedResources::Base
  belongs_to :pacient
  actions :index, :new, :create
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.new
    @analize = FelAnaliza.where(:standard => true)
  end


end
