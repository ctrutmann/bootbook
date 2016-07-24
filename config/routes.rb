Rails.application.routes.draw do
  resources :users
  resources :conversations

  # match '/auth/:provider/callback', :via => [:get], :to => 'sessions#create'
  match '/auth/failure', :via => [:get], :to => 'sessions#failure'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  # get '/signout' => 'sessions#destroy', :as => :signout
  # get '/auth/failure' => 'sessions#failure'

  root 'welcome#index'
end
