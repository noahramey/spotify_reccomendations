Rails.application.routes.draw do
  resources :playlists do
    resources :tracks
  end
end
