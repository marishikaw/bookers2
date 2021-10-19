Rails.application.routes.draw do
  root to: 'homes#top'
  
  get '/home/about' => 'homes#show', as: 'about_home'
  
  devise_for :users
  
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  
  resources :users, only: [:index, :show, :edit, :update]
end