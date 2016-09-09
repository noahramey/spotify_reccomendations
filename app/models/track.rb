class Track < ActiveRecord::Base
  belongs_to :playlist
  validates :name, presence: true
  validates :artist, presence: true
  validates :album, presence: true
end
