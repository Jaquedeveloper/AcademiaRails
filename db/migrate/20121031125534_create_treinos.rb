class CreateTreinos < ActiveRecord::Migration
  def change
    create_table :treinos do |t|
      t.references :usuario
      t.references :tipo_treino
      t.integer :calorias_gastas
      t.string :tempo
      t.string :data
      t.string :horario

      t.timestamps
    end
    add_index :treinos, :usuario_id
    add_index :treinos, :tipo_treino_id
  end
end
