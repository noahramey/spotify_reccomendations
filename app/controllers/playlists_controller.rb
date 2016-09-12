class PlaylistsController < ApplicationController

  RSpotify.authenticate("7dfcfde7deae46579729317d4fcb7097", "45b98919ccf846b985a41fa1be9d08b5")

  def index
    @test = RSpotify::User.find('noahramey')
    @playlists = @test.playlists
    render :index
  end

  def show
    @playlist = RSpotify::Playlist.find('noahramey', params[:id])
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
