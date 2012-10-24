class CreateTipoTreinos < ActiveRecord::Migration
  def change
    create_table :tipo_treinos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
