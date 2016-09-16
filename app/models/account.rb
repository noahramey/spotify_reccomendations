require 'rspotify'

class Account < ApplicationRecord
  belongs_to :user
  has_many :playlists
  validates_presence_of :name, :username
  validates :username, uniqueness: true

  after_save do
    RSpotify.authenticate("7dfcfde7deae46579729317d4fcb7097", "45b98919ccf846b985a41fa1be9d08b5")
    playlists = RSpotify::User.find(self.username).playlists
    playlists.each do |playlist|
      spotify_playlist = self.playlists.create(name: playlist.name, description: playlist.description, url: playlist.href)
      tracks = []
      playlist.tracks.each do |track|
        new_track = spotify_playlist.tracks.new(name: track.name, artist: track.artists.first.name, album: track.album.name, popularity: track.popularity, acousticness: track.audio_features.acousticness, danceability: track.audio_features.danceability, energy: track.audio_features.energy, instrumentalness: track.audio_features.instrumentalness, loudness: track.audio_features.loudness, tempo: track.audio_features.tempo)
        tracks.push(new_track)
      end
      Track.import tracks
    end
  end
end
