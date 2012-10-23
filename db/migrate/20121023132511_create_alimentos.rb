class CreateAlimentos < ActiveRecord::Migration
  def change
    create_table :alimentos do |t|
      t.string :nome
      t.string :categoria
      t.integer :quantidade
      t.string :unidade_medida
      t.integer :calorias
      t.integer :proteinas
      t.integer :carboidratos
      t.integer :gorduras

      t.timestamps
    end
  end
end
