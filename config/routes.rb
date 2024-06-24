# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#top'
  get 'current_location/show'
  get '/policy', to: 'pages#policy'
  get '/terms', to: 'pages#terms'
  get 'auth/:provider/callback', to: 'user_sessions#google_auth'
  get 'auth/failure', to: redirect('/')

  resources :distance_logs, only: %i[index new create show destroy]
  resources :achievements, only: %i[index show]
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]
end
