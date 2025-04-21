class CreateResposta < ActiveRecord::Migration[8.0]
  def change
    create_table :resposta do |t|
      t.string :conteudo
      t.boolean :correta
      t.references :pergunta, null: false, foreign_key: true

      t.timestamps
    end
  end
end
