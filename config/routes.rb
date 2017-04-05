Rails.application.routes.draw do
  get 'welcome/index'

  resources :villains
  resources :feedback
  root 'welcome#index'
  
  
  get 'signup' => 'users#new'
  resources :users
  
  get 'login' => 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
