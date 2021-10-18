Rails.application.routes.draw do
  root to: 'homes#top'
  
  devise_for :users
  
  get '/home/about' => 'homes#show', as: 'about_home'
  
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  
  resources :users, only: [:index, :show, :edit, :update]
end