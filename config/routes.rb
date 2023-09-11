Rails.application.routes.draw do
  resources :ip_addresses
  resources :pair_nodes
  resources :macs
  resources :traffic_infos
  resources :switches
  resources :myswitch_tables
  resources :messages
  resources :rooms
  root 'welcome#index'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :consoles
  resources :distros
  resources :programminglanguages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
