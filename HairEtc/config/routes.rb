HairEtc::Application.routes.draw do
  resources :stylists, :appointments, :services, :clients, :sessions

  root to: 'clients#index'

  get '/signup', to: 'clients#new'
  get '/signout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
end
