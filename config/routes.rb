Rails.application.routes.draw do
  root 'static_pages#home'

  get '/invite', to: 'invitations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  resources :users
  resources :events
  resources :invitations, only: [:create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
