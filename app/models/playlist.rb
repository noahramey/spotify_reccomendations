class Playlist < ActiveRecord::Base
  has_many :tracks
  belongs_to :account
  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true, uniqueness: true
end
