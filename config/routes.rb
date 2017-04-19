Rails.application.routes.draw do
  root 'users#index'
  get 'users/index' => 'users#index'
  
  
  get 'welcome/index'

  resources :villains
  resources :feedback
  resources :about_us
  
  get '/signup' => 'users#new'
  post 'feedback/new' => 'feeback/new'
  get 'feedback/:id' => 'feedback#show'
  
  resources :users
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
