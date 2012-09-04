class EvaluaresController < InheritedResources::Base
  #belongs_to :pacient
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @evaluare = Evaluare.new
  end
end
