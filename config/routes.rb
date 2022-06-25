Rails.application.routes.draw do
  # get 'adminorders', to:'adminorders#index'
  # post 'adminorders', to: 'adminorders#update'
  resources :adminorders
  post 'adminorders/:id', to: 'adminorders#show'
  post '/adminorders/:id/edit', to: 'adminorders#edit'

  get 'orders/new'
  post 'orders/create'
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
