class PlaylistsController < ApplicationController
  def index
    if current_user
      if current_user.account
        @playlists = current_user.account.playlists
        render :index
      else
        redirect_to new_account_path
      end
    else
      @playlists = Playlist.all
      render :index
    end
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
      flash[:notice] = "Playlist successfully created!"
      redirect_to playlists_path
    else
      flash[:alert] = "Unable to create playlist."
      render :new
    end
  end

private
  def playlist_params
    params.require(:playlist).permit(:name, :description, :url)
  end
end
