class Treinoexercicio < ActiveRecord::Base
  belongs_to :treino
  belongs_to :exercicio
  attr_accessible :treino_id, :exercicio_id
  # attr_accessible :title, :body
end
