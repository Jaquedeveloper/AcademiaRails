class CreateTipoRefeicaos < ActiveRecord::Migration
  def change
    create_table :tipo_refeicaos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
