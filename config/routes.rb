Rails.application.routes.draw do
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
