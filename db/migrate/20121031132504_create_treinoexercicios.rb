class CreateTreinoexercicios < ActiveRecord::Migration
  def change
    create_table :treinoexercicios do |t|
      t.references :treino
      t.references :exercicio

      t.timestamps
    end
    add_index :treinoexercicios, :treino_id
    add_index :treinoexercicios, :exercicio_id
  end
end
