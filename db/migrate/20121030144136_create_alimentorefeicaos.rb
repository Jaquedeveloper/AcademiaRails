class CreateAlimentorefeicaos < ActiveRecord::Migration
  def change
    create_table :alimentorefeicaos do |t|
      t.references :refeicao
      t.references :alimento

      t.timestamps
    end
    add_index :alimentorefeicaos, :refeicao_id
    add_index :alimentorefeicaos, :alimento_id
  end
end
