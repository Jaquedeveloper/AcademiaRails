class Alimentorefeicao < ActiveRecord::Base
  belongs_to :refeicao
  belongs_to :alimento
  attr_accessible :refeicao_id, :alimento_id
  # attr_accessible :title, :body
end
