class Usuario < ActiveRecord::Base
  attr_accessible :altura, :idade, :nome, :peso_inicial, :sexo
end
