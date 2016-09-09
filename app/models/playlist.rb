class Playlist < ActiveRecord::Base
  has_many :tracks
  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true, uniqueness: true
end
