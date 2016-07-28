Rails.application.routes.draw do
  # get 'message/index'

  resources :users do
    get 'search', :on => :collection
  end

  # custom AJAX-only route to geocode user locations (get latLng)
  get '/geocode' => 'geocode#geocode', :as => :geocode

  # # works
  # get '/users/search' =>'users#search', :as => :search

  # resources :conversations do
  #   resources :messages
  # end

  resources :conversations do
    resources :messages
  end

  # match '/auth/:provider/callback', :via => [:get], :to => 'sessions#create'
  match '/auth/failure', :via => [:get], :to => 'sessions#failure'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  # get '/auth/failure' => 'sessions#failure'

  root 'welcome#index'
end
