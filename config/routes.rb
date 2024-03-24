Rails.application.routes.draw do
  root 'pages#top'
  resources :runs
end
