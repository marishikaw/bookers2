Rails.application.routes.draw do
  root to: 'homes#top'
  
  get '/home/about' => 'homes#show', as: 'about_home'
  
  devise_for :users
  
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
end