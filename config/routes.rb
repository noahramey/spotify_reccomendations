Rails.application.routes.draw do
  root :to => 'playlists#index'

  resources :playlists, :except => [:edit, :update, :destroy]
end
