class CreateExercicios < ActiveRecord::Migration
  def change
    create_table :exercicios do |t|
      t.string :nome
      t.integer :calorias_gastas
      t.integer :numero_series
      t.integer :tempo_descanso
      t.integer :exercicios_series

      t.timestamps
    end
  end
end
