Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users

  resources :villains
  resources :feedbacks
  resources :about_us
  
  get '/villain' => 'villains#home'
  get '/signup' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
