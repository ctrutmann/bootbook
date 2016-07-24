Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/failure'

  resources :users

  root 'welcome#index'

  # get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :via => [:get], :to => 'sessions#create'
  match '/auth/failure', :via => [:get], :to => 'sessions#failure'

  # get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  # get '/auth/failure' => 'sessions#failure'

end
