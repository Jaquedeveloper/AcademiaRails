class Treino < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :tipo_treino
  attr_accessible :calorias_gastas, :data, :horario, :tempo, :usuario_id, :tipo_treino_id
end
