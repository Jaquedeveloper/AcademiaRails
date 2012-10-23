class Exercicio < ActiveRecord::Base
  attr_accessible :calorias_gastas, :exercicios_series, :nome, :numero_series, :tempo_descanso
end
