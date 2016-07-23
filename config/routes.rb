Rails.application.routes.draw do
  get 'users/index'
  get 'welcome/index'
  # Don't forget about resource: :users

  resources :users

  root 'welcome#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
