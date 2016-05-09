Rails.application.routes.draw do
  
  # get 'new_page', to: 'pages#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  resources :pages, only: [:new, :create, :index]
  root to: 'visitors#index'
end
