class CreatePergunta < ActiveRecord::Migration[8.0]
  def change
    create_table :pergunta do |t|
      t.string :enunciado
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
