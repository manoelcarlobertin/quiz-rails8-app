class CreateQuizzes < ActiveRecord::Migration[8.0]
  def change
    create_table :quizzes do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
