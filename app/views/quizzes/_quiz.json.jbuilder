json.extract! quiz, :id, :titulo, :descricao, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
