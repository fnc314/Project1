HairEtc::Application.routes.draw do
  resources :stylists, :appointments, :services, :clients 

  root to: 'clients#new'

  get '/signup', to: 'clients#new'
  get '/signout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
end
