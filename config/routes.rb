Rails.application.routes.draw do
  root :to => 'playlists#index'

  resources :playlists, :except => [:edit, :update, :destroy]

  get '/auth/spotify/callback', to: 'users#spotify'
end
