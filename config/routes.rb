Rails.application.routes.draw do
  root to: 'homes#top'
  
  devise_for :users
  
  get '/home/about' => 'homes#show', as: :about
  
  resources :books, only: [:new, :create, :index, :show, :destroy]
  
  resources :users, only: [:new, :create, :index, :show, :destroy]
end