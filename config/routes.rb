Rails.application.routes.draw do
  root 'pages#top'

  resources :distance_logs, only: %i[index new create show destroy]
  resources :achievements, only: %i[index show]
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]

end
