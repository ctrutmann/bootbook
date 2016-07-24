Rails.application.routes.draw do

  resources :users
  resources :conversations

  root 'welcome#index'
end
