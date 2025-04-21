Rails.application.routes.draw do
  resources :quizzes do
    resources :perguntas do
      resources :respostas
    end
  end
end
