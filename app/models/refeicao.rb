class Refeicao < ActiveRecord::Base
  belongs_to :Tipo_Refeicao
  belongs_to :Usuario
  attr_accessible :calorias_consumidas, :data, :hora, :Tipo_Refeicao_id, :Usuario_id
end
