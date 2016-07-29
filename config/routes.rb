Rails.application.routes.draw do
  resources :users do
    get 'search', :on => :collection
  end

  resources :conversations do
    resources :messages
  end

  resources :follows

  # custom AJAX-only route to geocode user locations (get latLng)
  get '/geocode' => 'geocode#geocode', :as => :geocode

  # get 'message/index'

  match '/auth/failure', :via => [:get], :to => 'sessions#failure'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  root 'welcome#index'
end
