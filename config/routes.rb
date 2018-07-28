Rails.application.routes.draw do
  resources :poem_lists
  resources :users
  resources :poems

  get '/users/:user_id/poems', to: 'users#user_poems'

  # This is login:
  resources :sessions, only: [:create]

  # post '/sessions/', to: 'sessions#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
