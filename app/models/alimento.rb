class Alimento < ActiveRecord::Base
  attr_accessible :calorias, :carboidratos, :categoria, :gorduras, :nome, :proteinas, :quantidade, :unidade_medida
end
