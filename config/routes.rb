Rails.application.routes.draw do
  
  get 'users/index' => 'users#index'
  root 'users#index'
  
  get 'welcome/index'

  resources :villains
  resources :feedback
  
  get 'signup' => 'users#new'
  
  
  
  
  resources :users
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
