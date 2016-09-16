Rails.application.routes.draw do
  devise_for :users
  root :to => 'playlists#index'

  resources :playlists, :except => [:edit, :update, :destroy]
  resources :accounts
end
