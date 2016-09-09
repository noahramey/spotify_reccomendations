Rails.application.routes.draw do
  root :to => 'playlists#index'

  resources :playlists, :only => [:show, :index] do
    resources :tracks, :only => [:show]
  end
end
