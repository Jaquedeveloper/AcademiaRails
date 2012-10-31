class Historico < ActiveRecord::Base
  belongs_to :refeicao
  belongs_to :treino
  attr_accessible :treino_id, :refeicao_id, :calorias_a_consumir, :gordura_corporal, :massa_magra, :peso_a_perder, :peso_atual, :peso_gordura, :peso_gordura_ideal, :peso_ideal, :peso_perdido, :saldo_calorias, :situacao, :valor_metabolico
end
