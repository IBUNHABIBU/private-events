Rails.application.routes.draw do
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'signup', to: 'users#new'
    resources :users
    resources :events
end
