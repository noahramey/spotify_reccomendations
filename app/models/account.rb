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
      self.playlists.new(name: playlist.name, description: playlist.description, url: playlist.href)
    end
  end
end
