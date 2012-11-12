class Retetar < ActiveRecord::Base
  belongs_to :medic
  attr_accessible :tip, :medic_id, :serie, :nr_prima_reteta, :nr_ultima_reteta
  def tip_cu_medic
    #pentru collection_select din reteta noua
    "#{tip} -> #{medic.try(:nume)}"
  end
end
