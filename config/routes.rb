Rails.application.routes.draw do
  resources :actor_movies
  resources :movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors
  root   'persons#new'
  get 'persons', to:'persons#index'
  post 'persons', to:'persons#create'
  get 'persons/new', to: 'persons#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
