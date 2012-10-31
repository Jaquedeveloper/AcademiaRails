class CreateHistoricos < ActiveRecord::Migration
  def change
    create_table :historicos do |t|
      t.references :refeicao
      t.references :treino
      t.float :peso_atual
      t.float :gordura_corporal
      t.integer :valor_metabolico
      t.float :peso_gordura
      t.float :peso_gordura_ideal
      t.float :massa_magra
      t.integer :calorias_a_consumir
      t.float :peso_perdido
      t.float :peso_a_perder
      t.float :peso_ideal
      t.integer :saldo_calorias
      t.string :situacao

      t.timestamps
    end
    add_index :historicos, :refeicao_id
    add_index :historicos, :treino_id
  end
end
