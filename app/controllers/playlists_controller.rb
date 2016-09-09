class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    render :index
  end

  def show
    @playlist = Playlist.find(params[:id])
    render :show
  end

  def new
    @playlist = Playlist.new
    render :new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to playlists_path
    else
      render :new
    end
  end

private
  def playlist_params
    params.require(:playlist).permit(:name, :description, :url)
  end
end
