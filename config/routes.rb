# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: %i[new create index]
  resources :users, only: %i[new create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
