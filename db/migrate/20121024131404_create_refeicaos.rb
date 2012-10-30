class CreateRefeicaos < ActiveRecord::Migration
  def change
    create_table :refeicaos do |t|
      t.references :Tipo_Refeicao
      t.references :Usuario
      t.integer :calorias_consumidas
      t.string :hora
      t.string :data

      t.timestamps
    end
    add_index :refeicaos, :Tipo_Refeicao_id
    add_index :refeicaos, :Usuario_id
  end
end
