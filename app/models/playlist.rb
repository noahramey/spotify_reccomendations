class Playlist < ActiveRecord::Base
  has_many :tracks
  belongs_to :account
  validates :name, presence: true
  validates :url, presence: true
end
