Rails.application.routes.draw do
  resources :quizzes do
    resources :questions, shallow: true do
      resources :answers
    end
    member do
      get "start"
      get "result"
    end
    resources :quiz_attempts, only: [ :create, :show ]
  end
end
