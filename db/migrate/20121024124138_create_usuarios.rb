class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :altura
      t.string :sexo
      t.integer :idade
      t.float :peso_inicial

      t.timestamps
    end
  end
end
