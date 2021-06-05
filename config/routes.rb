Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'search/search'
  get '/search', to: 'search#search'
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  end