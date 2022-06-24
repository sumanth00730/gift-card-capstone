Rails.application.routes.draw do
  get 'orders/new'
  get 'orders/create'
  get '/orders', to:'orders#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'users/new'
  get 'users/create'

  # root "users#index"
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
end
