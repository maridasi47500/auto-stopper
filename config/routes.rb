Rails.application.routes.draw do
  resources :commandlines
  resources :places do
    member do
      get "aller"
    end
  end
  resources :proms
  resources :computerhackings
  resources :posts
  resources :cities
  resources :myscripts
  resources :mypics
  resources :myhacks
  resources :companies
  resources :devices do
    collection do
      get "hash"
      get "radio"
    end
  end
  resources :people do
    collection do
      get "hash"
      get "radio"
    end
  end
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
